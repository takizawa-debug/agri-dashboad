/**
 * 農業工程管理 — 品目カラーマップ
 */
const AgriColorMap = (() => {
    'use strict';

    /**
     * varieties_master データから品目→色のマップを構築
     * @param {Array} varieties - varieties_master のレコード配列
     * @returns {Object} { 'とうもろこし': 'amber', 'ミニトマト': 'red', ... }
     */
    function buildCropBaseColorMap(varieties) {
        const map = {};
        (varieties || []).forEach(v => {
            if (v.auto_name) {
                const baseName = v.auto_name.split('_')[0];
                if (!map[baseName]) map[baseName] = v.color || 'grey';
            }
        });
        return map;
    }

    /**
     * varieties_master データから auto_name→色のマップを構築
     * @param {Array} varieties - varieties_master のレコード配列
     * @returns {Object} { 'とうもろこし_味来_早': 'amber', ... }
     */
    function buildCropColorMap(varieties) {
        const map = {};
        (varieties || []).forEach(v => {
            if (v.auto_name && v.color) {
                map[v.auto_name] = v.color;
            }
        });
        return map;
    }

    return { buildCropBaseColorMap, buildCropColorMap };
})();
