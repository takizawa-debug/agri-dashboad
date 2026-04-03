export async function onRequest(context) {
    const { env } = context;
    try {
        const [
            { results: plans },
            { results: processes },
            { results: workMaster },
            { results: fieldsRaw },
            { results: loggedTasks }
        ] = await Promise.all([
            env.DB.prepare('SELECT * FROM season_plans').all(),
            env.DB.prepare('SELECT * FROM process_master').all(),
            env.DB.prepare('SELECT * FROM work_master').all(),
            env.DB.prepare('SELECT * FROM fields').all(),
            env.DB.prepare('SELECT * FROM tasks WHERE generated_task_id IS NOT NULL').all()
        ]);

        // Build lookup maps
        const workMap = Object.fromEntries(workMaster.map(w => [w.minor_category, w.major_category]));
        const loggedMap = Object.fromEntries(loggedTasks.map(t => [t.generated_task_id, t]));
        const fields = Object.fromEntries(fieldsRaw.map(f => [f.name, {
            areaTotal: f.area_total,
            perimeter: f.perimeter,
            folder: f.folder_name,
            repElev: f.rep_elev,
            notes: f.notes
        }]));

        const schedules = plans.map(plan => {
            const cropProcs = processes.filter(p => p.variety_name === plan.variety_name);
            const ganttProcesses = [];
            const generatedTasks = [];

            cropProcs.forEach((proc, procIdx) => {
                const baseDateObj = parseDate(plan.base_date);
                const startOffset = parseInt(proc.base_day_offset) || 0;
                let endOffset = parseInt(proc.base_day_end_offset);
                const interval = parseInt(proc.repeat_interval) || 1;

                if (isNaN(endOffset) || endOffset < startOffset) {
                    endOffset = startOffset;
                }

                const majorCat = proc.work_major || workMap[proc.work_minor] || '';
                const sDate = offsetDate(baseDateObj, startOffset);
                const eDate = offsetDate(baseDateObj, endOffset);

                // Gantt chart process entry
                ganttProcesses.push({
                    procId: `${plan.id}-${procIdx}`,
                    majorCat,
                    midCat: proc.work_mid || '',
                    minorCat: proc.work_minor || '',
                    detail: proc.work_details || '',
                    startDate: formatDate(sDate),
                    endDate: formatDate(eDate),
                    startDateObj: sDate.getTime(),
                    endDateObj: eDate.getTime(),
                    startOffset,
                    endOffset,
                    interval,
                    materialName: proc.material_name || '',
                    equipmentName: proc.equipment_name || '',
                    baseWorkHours: parseFloat(proc.unit_value) || 0
                });

                // Generate individual tasks (expand repeats for continuous processes)
                const isContinuous = endOffset > startOffset;
                let repCount = 0;

                for (let dayOffset = startOffset; dayOffset <= endOffset; dayOffset += interval) {
                    const targetDate = offsetDate(parseDate(plan.base_date), dayOffset);
                    const taskId = isContinuous
                        ? `${plan.id}-${procIdx}-rep${repCount}`
                        : `${plan.id}-${procIdx}`;
                    const loggedInfo = loggedMap[taskId];

                    generatedTasks.push({
                        taskId,
                        isContinuous,
                        intervalDays: interval,
                        dayOffset,
                        targetDate: formatDate(targetDate),
                        targetDateObj: targetDate.getTime(),
                        majorCat,
                        midCat: proc.work_mid || '',
                        minorCat: proc.work_minor || '',
                        detail: proc.work_details || '',
                        baseQty: parseFloat(proc.base_qty) || 1,
                        baseUnit: proc.base_unit || '',
                        unitKbn: proc.unit_type || '',
                        baseWorkHours: parseFloat(proc.unit_value) || 0,
                        workHourUnit: proc.unit_name || '',
                        materialName: proc.material_name || '',
                        materialQty: proc.material_qty || 0,
                        materialUnit: proc.material_unit || '',
                        equipName: proc.equipment_name || '',
                        status: loggedInfo?.status || '未',
                        actualHours: loggedInfo?.actual_hours ?? null,
                        workerName: loggedInfo?.worker_name || '',
                        memo: loggedInfo?.memo || ''
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
                tasks: generatedTasks,
                processes: ganttProcesses
            };
        });

        return Response.json({ schedules, fields });
    } catch (err) {
        return Response.json({ error: err.message }, { status: 500 });
    }
}

/** Parse date string, fallback to current date if invalid */
function parseDate(str) {
    const d = new Date(str);
    return isNaN(d.getTime()) ? new Date() : d;
}

/** Create a new Date offset by N days from a base date */
function offsetDate(base, days) {
    const d = new Date(base);
    d.setDate(d.getDate() + days);
    return d;
}

/** Format Date as YYYY-MM-DD */
function formatDate(d) {
    return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')}`;
}
