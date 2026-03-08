export async function onRequest(context) {
    const { env } = context;
    try {
        // Get all season plans
        const { results: plans } = await env.DB.prepare('SELECT * FROM season_plans').all();
        // Get all base processes
        const { results: processes } = await env.DB.prepare('SELECT * FROM crop_processes').all();
        // Get all fields
        const { results: fieldsRaw } = await env.DB.prepare('SELECT * FROM fields').all();

        let fields = {};
        for (const field of fieldsRaw) {
            fields[field.name] = {
                areaTotal: field.area_total,
                perimeter: field.perimeter,
                folder: field.folder_name,
                repElev: field.rep_elev,
                notes: field.notes
            };
        }

        // Generate dynamic schedules
        let schedules = plans.map(plan => {
            // Find processes for this variety. Default to 'とうもろこし' or '汎用'
            // For now, doing a simple matching. The script extracted "とうもろこし" from the sheet name.
            let cropName = '汎用';
            if (plan.variety_name && plan.variety_name.includes('とうもろこし')) {
                cropName = 'とうもろこし';
            }

            const cropProcs = processes.filter(p => p.crop_name === cropName);

            // Generate tasks for this plan
            const generatedTasks = cropProcs.map((proc, idx) => {
                const dayOffset = proc.day_offset || 0;
                let targetDateObj = new Date(plan.base_date);
                if (isNaN(targetDateObj.getTime())) {
                    targetDateObj = new Date(); // fallback
                }
                targetDateObj.setDate(targetDateObj.getDate() + dayOffset);

                const yyyy = targetDateObj.getFullYear();
                const mm = String(targetDateObj.getMonth() + 1).padStart(2, '0');
                const dd = String(targetDateObj.getDate()).padStart(2, '0');

                return {
                    taskId: `${plan.id}-${idx}`,
                    dayOffset: dayOffset,
                    targetDate: `${yyyy}-${mm}-${dd}`,
                    targetDateObj: targetDateObj.getTime(),
                    majorCat: '', // Can be joined from work_master, simplified for now
                    minorCat: proc.task_name,
                    workHours: 0, // compute from relation_ratio * base later
                    materialName: '',
                    materialQty: 0,
                    materialUnit: ''
                };
            }).sort((a, b) => a.targetDateObj - b.targetDateObj);

            return {
                planId: plan.id,
                cropName: plan.variety_name,
                field: plan.field_name,
                baseDate: plan.base_date,
                tasks: generatedTasks
            };
        });

        return Response.json({ schedules, fields });
    } catch (err) {
        return Response.json({ error: err.message }, { status: 500 });
    }
}
