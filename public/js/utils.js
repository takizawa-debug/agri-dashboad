/**
 * 農業工程管理 — 共通ユーティリティ
 */
const AgriUtils = (() => {
    'use strict';

    /** 日付に日数を加算して新しいDateを返す */
    function addDays(date, days) {
        const d = new Date(date.getTime());
        d.setDate(d.getDate() + days);
        return d;
    }

    /** Date → 'YYYY-MM-DD' 文字列 */
    function toDateStr(d) {
        return `${d.getFullYear()}-${('0' + (d.getMonth() + 1)).slice(-2)}-${('0' + d.getDate()).slice(-2)}`;
    }

    /** 今日の日付文字列 */
    const todayStr = toDateStr(new Date());

    /** 実働時間を計算 */
    function calcWorkHours(item) {
        if (!item.start_time || !item.end_time) return '—';
        const [sh, sm] = item.start_time.split(':').map(Number);
        const [eh, em] = item.end_time.split(':').map(Number);
        const totalMin = (eh * 60 + em) - (sh * 60 + sm) - (item.break_minutes || 0);
        if (totalMin <= 0) return '—';
        const h = Math.floor(totalMin / 60), m = totalMin % 60;
        return m > 0 ? `${h}h${m}m` : `${h}h`;
    }

    /** 画像URLの配列をパース */
    function parseImages(val) {
        if (!val) return [];
        if (Array.isArray(val)) return val;
        try { return JSON.parse(val); } catch { return val ? [val] : []; }
    }

    /** 2026年 日本の祝日リスト */
    const HOLIDAYS_2026 = new Set([
        '2026-01-01', '2026-01-12', '2026-02-11', '2026-02-23',
        '2026-03-20', '2026-04-29', '2026-05-03', '2026-05-04',
        '2026-05-05', '2026-05-06', '2026-07-20', '2026-08-11',
        '2026-09-21', '2026-09-22', '2026-09-23',
        '2026-10-12', '2026-11-03', '2026-11-23'
    ]);

    /** task_ref を統一的に生成 */
    function buildTaskRef(planId, procIdx, dayOffset) {
        if (dayOffset !== undefined && dayOffset !== null) {
            return `${planId}_${procIdx}_d${dayOffset}`;
        }
        return `${planId}_${procIdx}`;
    }

    /** 時間スロット配列を生成（5:00〜22:50, 10分刻み） */
    function generateTimeSlots() {
        const s = [];
        for (let h = 5; h <= 22; h++)
            for (let m = 0; m < 60; m += 10)
                s.push(`${String(h).padStart(2, '0')}:${String(m).padStart(2, '0')}`);
        return s;
    }

    /** 休憩時間選択肢 */
    const BREAK_SLOTS = [0, 10, 20, 30, 40, 50, 60, 90, 120];

    return {
        addDays, toDateStr, todayStr,
        calcWorkHours, parseImages,
        HOLIDAYS_2026, buildTaskRef,
        generateTimeSlots, BREAK_SLOTS
    };
})();
