export async function onRequest(context) {
    const { env } = context;
    try {
        const { results: plans } = await env.DB.prepare('SELECT * FROM season_plans').all();
        const { results: processes } = await env.DB.prepare('SELECT * FROM process_master').all();
        const { results: workMaster } = await env.DB.prepare('SELECT * FROM work_master').all();
        const { results: fieldsRaw } = await env.DB.prepare('SELECT * FROM fields').all();
        const { results: loggedTasks } = await env.DB.prepare('SELECT * FROM tasks WHERE generated_task_id IS NOT NULL').all();

        // Helper map to find major category from minor category
        const workMap = {};
        for (const w of workMaster) {
            workMap[w.minor_category] = w.major_category;
        }

        const loggedMap = {};
        for (const lt of loggedTasks) {
            loggedMap[lt.generated_task_id] = lt;
        }

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

        let schedules = plans.map(plan => {
            const planVariety = plan.variety_name;
            const cropProcs = processes.filter(p => p.variety_name === planVariety);

            let generatedTasks = [];

            cropProcs.forEach((proc, procIdx) => {
                const startOffset = parseInt(proc.base_day_offset) || 0;
                let endOffset = parseInt(proc.base_day_end_offset);
                let interval = parseInt(proc.repeat_interval) || 1;

                if (isNaN(endOffset) || endOffset < startOffset) {
                    endOffset = startOffset; // single task
                }

                let repCount = 0;
                let isContinuous = (endOffset > startOffset);

                for (let dayOffset = startOffset; dayOffset <= endOffset; dayOffset += interval) {
                    let targetDateObj = new Date(plan.base_date);
                    if (isNaN(targetDateObj.getTime())) {
                        targetDateObj = new Date();
                    }
                    targetDateObj.setDate(targetDateObj.getDate() + dayOffset);

                    const yyyy = targetDateObj.getFullYear();
                    const mm = String(targetDateObj.getMonth() + 1).padStart(2, '0');
                    const dd = String(targetDateObj.getDate()).padStart(2, '0');

                    const majorCatCache = proc.work_major || workMap[proc.work_minor] || '';

                    const taskId = isContinuous ? `${plan.id}-${procIdx}-rep${repCount}` : `${plan.id}-${procIdx}`;
                    const loggedInfo = loggedMap[taskId];

                    generatedTasks.push({
                        taskId: taskId,
                        isContinuous: isContinuous,
                        intervalDays: interval,
                        dayOffset: dayOffset,
                        targetDate: `${yyyy}-${mm}-${dd}`,
                        targetDateObj: targetDateObj.getTime(),
                        majorCat: majorCatCache,
                        midCat: proc.work_mid || '',
                        minorCat: proc.work_minor || '',
                        detail: proc.work_details || '',
                        baseQty: parseFloat(proc.base_qty) || 1,
                        unitKbn: proc.unit_type || '',
                        baseWorkHours: parseFloat(proc.unit_value) || 0,
                        workHourUnit: proc.unit_name || '',
                        materialName: proc.material_name || '',
                        materialQty: proc.material_qty || 0,
                        materialUnit: proc.material_unit || '',
                        equipName: proc.equipment_name || '',
                        status: loggedInfo ? loggedInfo.status : '未',
                        actualHours: loggedInfo ? loggedInfo.actual_hours : null,
                        workerName: loggedInfo ? loggedInfo.worker_name : '',
                        memo: loggedInfo ? loggedInfo.memo : ''
                    });

                    if (!isContinuous) break;
                    repCount++;
                }
            });

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
