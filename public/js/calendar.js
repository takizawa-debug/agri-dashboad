/**
 * 農業工程管理 — カレンダー（FullCalendar）ロジック
 */
const AgriCalendar = (() => {
    'use strict';

    const { addDays, toDateStr, buildTaskRef, HOLIDAYS_2026 } = AgriUtils;

    /**
     * カレンダー用データを構築
     * @param {Object} opts
     * @returns {{ resources: Array, events: Array, minDate: string, maxDate: string, totalDays: number }}
     */
    function buildCalendarData({ seasonPlans, varietiesMaster, processMaster, fields, taskStatusMap }) {
        const varietyMap = {};
        (varietiesMaster || []).forEach(v => { varietyMap[v.auto_name] = v; });

        const processMap = {};
        (processMaster || []).forEach(p => {
            if (!processMap[p.variety_name]) processMap[p.variety_name] = [];
            processMap[p.variety_name].push(p);
        });

        const fieldMap = {};
        (fields || []).forEach(f => { fieldMap[f.name] = f; });

        const colorMap = AgriColorMap.buildCropBaseColorMap(varietiesMaster);

        // ─── Raw events ───
        const rawEvents = [];
        (seasonPlans || []).forEach(plan => {
            if (!plan.base_date) return;
            const baseDate = new Date(plan.base_date);
            if (isNaN(baseDate.getTime())) return;

            const vMaster = varietyMap[plan.variety_name] || {};
            const itemName = vMaster.item_name || plan.variety_name.split('_')[0];
            const baseColor = colorMap[itemName] || 'grey';
            const pParts = (plan.variety_name || '').split('_');
            const varietyLabel = pParts.length > 1 ? pParts[1] : plan.variety_name;
            const cropType = pParts.length > 2 ? pParts[2] : '';

            const fMaster = fieldMap[plan.field_name] || {};
            const maxPlantable = fMaster.max_plantable ? parseInt(fMaster.max_plantable) : 0;
            const seedRatio = vMaster.seed_ratio ? parseFloat(vMaster.seed_ratio) : 0;
            const yieldRatio = vMaster.yield_ratio ? parseFloat(vMaster.yield_ratio) : 100;
            const seedsPerTray = parseInt(vMaster.seeds_per_tray) || 0;
            const plantDist = fMaster.plant_distance ? parseFloat(fMaster.plant_distance) : 0;
            const rows = fMaster.number_of_rows ? parseInt(fMaster.number_of_rows) : 1;
            const sowCount = seedRatio > 0 ? Math.ceil(maxPlantable * (seedRatio / 100)) : 0;
            const nurseryTrays = seedsPerTray > 0 ? Math.ceil(sowCount / seedsPerTray) : 0;
            const yieldAmount = Math.ceil(maxPlantable * (yieldRatio / 100));
            const mulchLength = Math.ceil((maxPlantable / (rows || 1)) * (plantDist / 100));

            const procs = processMap[plan.variety_name] || [];
            const allProcsForVariety = (processMaster || []).filter(p => p.variety_name === plan.variety_name);

            procs.forEach(pm => {
                const procIdx = allProcsForVariety.indexOf(pm);
                const offset = parseInt(pm.base_day_offset) || 0;
                const endOffset = pm.base_day_end_offset != null && pm.base_day_end_offset !== ''
                    ? parseInt(pm.base_day_end_offset) : null;
                const workName = pm.work_minor || pm.work_mid || '';

                const detail = {
                    variety: varietyLabel, cropType, field: plan.field_name || '',
                    maxPlantable, sowCount, nurseryTrays, mulchLength, yieldAmount,
                    yieldUnit: vMaster.unit || '個'
                };

                if (endOffset != null && endOffset !== offset) {
                    for (let day = offset; day <= endOffset; day++) {
                        const d = addDays(baseDate, day);
                        const taskRef = buildTaskRef(plan.id, procIdx, day);
                        rawEvents.push({
                            dateStr: toDateStr(d), itemName, baseColor, workName,
                            workDetails: pm.work_details || '',
                            detail: { ...detail, taskRef }, isFaded: false
                        });
                    }
                } else {
                    const exactDate = addDays(baseDate, offset);
                    const taskRef = buildTaskRef(plan.id, procIdx);
                    rawEvents.push({
                        dateStr: toDateStr(exactDate),
                        startStr: toDateStr(addDays(exactDate, -2)),
                        endStr: toDateStr(addDays(exactDate, 3)),
                        itemName, baseColor, workName,
                        workDetails: pm.work_details || '',
                        detail: { ...detail, taskRef }, isFaded: true
                    });
                }
            });
        });

        // ─── Group by date + item + work ───
        const grouped = {};
        rawEvents.forEach(ev => {
            const key = `${ev.dateStr}__${ev.itemName}__${ev.workName}`;
            if (!grouped[key]) {
                grouped[key] = {
                    dateStr: ev.dateStr, startStr: ev.startStr || ev.dateStr,
                    endStr: ev.endStr || null, itemName: ev.itemName,
                    baseColor: ev.baseColor, workName: ev.workName,
                    workDetails: ev.workDetails, isFaded: ev.isFaded, details: []
                };
            }
            grouped[key].details.push(ev.detail);
            if (ev.isFaded) grouped[key].isFaded = true;
            if (ev.startStr && ev.startStr < grouped[key].startStr) grouped[key].startStr = ev.startStr;
            if (ev.endStr && (!grouped[key].endStr || ev.endStr > grouped[key].endStr)) grouped[key].endStr = ev.endStr;
        });

        // ─── Resources (ordered by varieties_master) ───
        const itemOrder = [];
        (varietiesMaster || []).forEach(v => {
            if (v.item_name && !itemOrder.includes(v.item_name)) itemOrder.push(v.item_name);
        });
        const resourceSet = new Set();
        Object.values(grouped).forEach(g => resourceSet.add(g.itemName));
        const resources = [];
        itemOrder.forEach(name => {
            if (resourceSet.has(name)) { resources.push({ id: name, title: name }); resourceSet.delete(name); }
        });
        resourceSet.forEach(name => resources.push({ id: name, title: name }));

        // ─── Events ───
        const tsMap = taskStatusMap || {};
        const events = Object.values(grouped).map(g => {
            const count = g.details.length;
            const title = g.workName + (count > 1 ? ` (${count})` : '');
            const allDone = g.details.every(d => d.taskRef && !!tsMap[d.taskRef]);
            const classNames = [`bg-${g.baseColor}`, `border-${g.baseColor}`, 'text-white', 'text-caption', 'px-1'];
            if (g.isFaded) classNames.push('event-fade-edges');
            if (allDone) classNames.push('cal-event-done');
            const startD = g.isFaded ? g.startStr : g.dateStr;
            let endD = g.endStr || null;
            if (!endD) { const sd = new Date(g.dateStr); endD = toDateStr(addDays(sd, 1)); }
            return {
                title: allDone ? `✓ ${title}` : title,
                resourceId: g.itemName, start: startD, end: endD, classNames,
                extendedProps: {
                    itemName: g.itemName, workName: g.workName, dateStr: g.dateStr,
                    color: g.baseColor, workDetails: g.workDetails, details: g.details, allDone
                }
            };
        });

        // ─── Date range ───
        let minDate = null, maxDate = null;
        events.forEach(e => {
            if (!minDate || e.start < minDate) minDate = e.start;
            const en = e.end || e.start;
            if (!maxDate || en > maxDate) maxDate = en;
        });
        if (!minDate) minDate = toDateStr(new Date());
        if (!maxDate) maxDate = toDateStr(addDays(new Date(), 180));
        const totalDays = Math.ceil((new Date(maxDate) - new Date(minDate)) / (1000 * 60 * 60 * 24)) + 14;

        return { resources, events, minDate, maxDate, totalDays };
    }

    /**
     * FullCalendar インスタンスを生成してレンダリング
     * @param {HTMLElement} el
     * @param {Object} calData - buildCalendarData の戻り値
     * @param {Object} opts - { onEventClick: Function }
     * @returns {FullCalendar.Calendar}
     */
    function renderCalendar(el, calData, opts = {}) {
        const { resources, events, minDate, totalDays } = calData;

        const instance = new FullCalendar.Calendar(el, {
            initialView: 'fullRange',
            initialDate: minDate,
            views: {
                fullRange: {
                    type: 'resourceTimeline',
                    duration: { days: totalDays },
                    slotDuration: { days: 1 }
                }
            },
            locale: 'ja',
            schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives',
            resources, events,
            resourceAreaWidth: '100px',
            resourceAreaHeaderContent: '品目',
            slotMinWidth: 100,
            height: 'auto',
            slotLabelFormat: [
                { month: 'long' },
                { day: 'numeric', weekday: 'short' }
            ],
            nowIndicator: true,
            headerToolbar: { left: 'today', center: '', right: '' },
            buttonText: { today: '今日に移動' },
            slotLabelClassNames(arg) {
                const d = arg.date;
                const ds = toDateStr(d);
                if (HOLIDAYS_2026.has(ds)) return ['fc-label-holiday'];
                if (d.getDay() === 0) return ['fc-label-sunday'];
                if (d.getDay() === 6) return ['fc-label-saturday'];
                return [];
            },
            slotLaneClassNames(arg) {
                const d = arg.date;
                const ds = toDateStr(d);
                if (HOLIDAYS_2026.has(ds)) return ['fc-slot-holiday'];
                if (d.getDay() === 0) return ['fc-slot-sunday'];
                if (d.getDay() === 6) return ['fc-slot-saturday'];
                return [];
            },
            eventClick(info) {
                info.jsEvent.preventDefault();
                if (opts.onEventClick) opts.onEventClick(info.event.extendedProps);
            }
        });

        instance.render();

        // Scroll to today
        setTimeout(() => {
            instance.updateSize();
            const daysFromStart = Math.ceil((new Date() - new Date(minDate)) / (1000 * 60 * 60 * 24)) - 3;
            instance.scrollToTime({ days: daysFromStart });
        }, 500);

        return instance;
    }

    return { buildCalendarData, renderCalendar };
})();
