/**
 * 農業工程管理 — タスク生成ロジック
 */
const AgriTaskGenerator = (() => {
    'use strict';

    const { addDays, toDateStr, buildTaskRef } = AgriUtils;

    /**
     * マスターデータからタスク一覧を生成
     * @param {Object} opts
     * @param {Array} opts.seasonPlans
     * @param {Array} opts.processMaster
     * @param {Array} opts.varietiesMaster
     * @param {Array} opts.logs
     * @param {Object} opts.taskStatusMap
     * @returns {Array} タスクオブジェクトの配列
     */
    function generateTasks({ seasonPlans, processMaster, varietiesMaster, logs, taskStatusMap }) {
        const tasks = [];
        const logMap = {};
        (logs || []).forEach(l => { if (l.task_ref) logMap[l.task_ref] = l; });

        (seasonPlans || []).forEach(plan => {
            if (!plan.base_date) return;
            const baseDate = new Date(plan.base_date);
            if (isNaN(baseDate.getTime())) return;

            const vInfo = (varietiesMaster || []).find(v => v.auto_name === plan.variety_name) || {};
            const cropItem = vInfo.item_name || plan.variety_name.split('_')[0];
            const cropVariety = vInfo.variety_name || '';

            const procs = (processMaster || []).filter(p => p.variety_name === plan.variety_name);

            procs.forEach((proc, idx) => {
                const offset = parseInt(proc.base_day_offset) || 0;
                const endOffset = proc.base_day_end_offset != null && proc.base_day_end_offset !== ''
                    ? parseInt(proc.base_day_end_offset) : null;

                const makeDateStr = (dayOff) => toDateStr(addDays(baseDate, dayOff));

                const buildTask = (dateStr, taskRef) => {
                    const linkedLog = logMap[taskRef];
                    return {
                        task_ref: taskRef,
                        scheduled_date: dateStr,
                        crop_item: cropItem,
                        crop_variety: cropVariety,
                        variety_auto: plan.variety_name,
                        field_name: plan.field_name || '',
                        work_major: proc.work_major || '',
                        work_mid: proc.work_mid || '',
                        work_minor: proc.work_minor || '',
                        is_done: !!(taskStatusMap || {})[taskRef],
                        has_log: !!linkedLog,
                        linked_log: linkedLog || null
                    };
                };

                if (endOffset != null && endOffset !== offset) {
                    for (let day = offset; day <= endOffset; day++) {
                        tasks.push(buildTask(makeDateStr(day), buildTaskRef(plan.id, idx, day)));
                    }
                } else {
                    tasks.push(buildTask(makeDateStr(offset), buildTaskRef(plan.id, idx)));
                }
            });
        });

        tasks.sort((a, b) => a.scheduled_date.localeCompare(b.scheduled_date));
        return tasks;
    }

    return { generateTasks };
})();
