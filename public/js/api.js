/**
 * 農業工程管理 — API通信
 */
const AgriApi = (() => {
    'use strict';

    /** テーブルデータを取得 */
    async function fetchTable(name) {
        const res = await fetch(`/api/admin/data/${name}`);
        const data = await res.json();
        return data.data || [];
    }

    /** タスクステータスの一括取得 */
    async function fetchTaskStatuses() {
        const res = await fetch('/api/task-status');
        const data = await res.json();
        const map = {};
        (data.data || []).forEach(s => { map[s.task_ref] = true; });
        return map;
    }

    /** タスクステータスを切り替え（完了/未完了） */
    async function toggleTaskStatus(taskRef, currentlyDone) {
        const res = await fetch('/api/task-status', {
            method: currentlyDone ? 'DELETE' : 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ task_ref: taskRef })
        });
        return res.json();
    }

    /** 作業記録の保存 */
    async function saveWorkLog(payload) {
        const res = await fetch('/api/admin/data/work_logs', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(payload)
        });
        return res.json();
    }

    /** 作業記録の削除 */
    async function deleteWorkLog(id) {
        const res = await fetch(`/api/admin/data/work_logs?id=${id}`, { method: 'DELETE' });
        return res.json();
    }

    /** 画像アップロード */
    async function uploadImage(file) {
        const fd = new FormData();
        fd.append('file', file);
        const res = await fetch('/api/images/upload', { method: 'POST', body: fd });
        return res.json();
    }

    /** マイグレーション実行 */
    async function runMigrate() {
        try { await fetch('/api/admin/migrate'); } catch (e) { /* ignore */ }
    }

    return {
        fetchTable, fetchTaskStatuses, toggleTaskStatus,
        saveWorkLog, deleteWorkLog, uploadImage, runMigrate
    };
})();
