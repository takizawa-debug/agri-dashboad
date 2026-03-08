
DROP TABLE IF EXISTS crop_processes;
DROP TABLE IF EXISTS process_master;

CREATE TABLE process_master (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    variety_name TEXT NOT NULL,
    base_day_offset INTEGER,
    timing_type TEXT,
    frequency TEXT,
    work_major TEXT,
    work_mid TEXT,
    work_minor TEXT,
    work_details TEXT,
    unit_type TEXT,
    unit_value REAL,
    unit_name TEXT,
    effort_value REAL,
    effort_unit TEXT,
    material_major TEXT,
    material_mid TEXT,
    material_name TEXT,
    material_desc TEXT,
    material_qty REAL,
    material_unit TEXT,
    equipment_category TEXT,
    equipment_name TEXT,
    notes TEXT
);

DELETE FROM process_master;

INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', -30.0, '単発', NULL,
            '準備・計画', '栽培計画', '作付け計画策定', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', -20.0, '単発', NULL,
            '準備・計画', '栽培計画', '種子・資材手配', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', -10.0, '単発', NULL,
            '圃場基盤', '基盤整備', '明渠・暗渠泥上げ', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', -10.0, '単発', NULL,
            '圃場基盤', '基盤整備', '耕作地基礎草刈り', '耕運前草刈り',
            '耕作面積', 100.0, 'm2', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '草刈機', '乗用草刈機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 10.0, '継続_開始', '中13日',
            '環境維持', '圃場周辺管理', '外周草刈り', '畑外周の草刈り',
            '外周長', 10.0, 'm', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '草刈機', '乗用草刈機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 95.0, '継続_終了', NULL,
            '環境維持', '圃場周辺管理', '外周草刈り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 1.0, '継続_開始', '中0日',
            '播種・育苗', '育苗管理', '温度・灌水管理', NULL,
            '育苗トレイ', 10.0, '枚', 3.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 20.0, '継続_終了', NULL,
            '播種・育苗', '育苗管理', '温度・灌水管理', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 25.0, '継続_開始', '中13日',
            '生育管理', '土壌・栄養管理', '除草（条間・株間）', NULL,
            '畝長さ', 10.0, 'm', 2.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '草刈機', '乗用草刈機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 95.0, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '除草（条間・株間）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 0.0, '単発', NULL,
            '播種・育苗', '播種作業', 'セルトレイ播種', NULL,
            '育苗トレイ', 1.0, '枚', 20.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 0.0, '単発', NULL,
            '播種・育苗', '播種作業', '覆土・初期灌水', NULL,
            '育苗トレイ', 1.0, '枚', 2.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 0.0, '単発', NULL,
            '播種・育苗', '育苗管理', '発芽機投入', NULL,
            '育苗トレイ', 10.0, '枚', 1.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '発芽機', '木造ハウス発芽機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 5.0, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '基肥散布', NULL,
            '耕作面積', 100.0, 'm2', 10.0, '分',
            'けいふん', 'あっg', 'こんにちは', NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 5.0, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '一次・二次耕耘', NULL,
            '耕作面積', 100.0, 'm2', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '耕運機', 'ロータリー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 10.0, '単発', NULL,
            '整地・畝立', '整地・畝立', 'マルチ張り', NULL,
            '畝長さ', 10.0, 'm', 3.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 20.0, '単発', NULL,
            '定植・直播', '定植・直播', '定植（移植作業）', NULL,
            '定植苗', 100.0, '本', 10.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '移植機', 'なかよし君', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 40.0, '単発', NULL,
            '植物保護', '病害虫管理', '農薬散布（防除）', NULL,
            '耕作面積', 100.0, 'm2', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '動噴', 'エンジン式(慣行)', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 60.0, '単発', NULL,
            '植物保護', '病害虫管理', '農薬散布（防除）', NULL,
            '耕作面積', 100.0, 'm2', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '動噴', 'エンジン式(慣行)', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 95.0, '単発', NULL,
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            '収穫量', 5.0, '本', 1.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 95.0, '単発', NULL,
            '収穫・調製', '調製・出荷', '洗浄・選果', '選果',
            '収穫量', 8.0, '本', 1.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_早', 95.0, '単発', NULL,
            '収穫・調製', '調製・出荷', 'パッキング・予冷', '箱詰め・出荷',
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', -30.0, '単発', NULL,
            '準備・計画', '栽培計画', '作付け計画策定', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', -20.0, '単発', NULL,
            '準備・計画', '栽培計画', '種子・資材手配', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', -10.0, '単発', NULL,
            '圃場基盤', '基盤整備', '明渠・暗渠泥上げ', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', -10.0, '単発', NULL,
            '圃場基盤', '基盤整備', '耕作地基礎草刈り', '耕運前草刈り',
            '耕作面積', 100.0, 'm2', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '草刈機', '乗用草刈機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 10.0, '継続_開始', '中13日',
            '環境維持', '圃場周辺管理', '外周草刈り', '畑外周の草刈り',
            '外周長', 10.0, 'm', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '草刈機', '乗用草刈機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 85.0, '継続_終了', NULL,
            '環境維持', '圃場周辺管理', '外周草刈り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 1.0, '継続_開始', '中0日',
            '播種・育苗', '育苗管理', '温度・灌水管理', NULL,
            '育苗トレイ', 10.0, '枚', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 20.0, '継続_終了', NULL,
            '播種・育苗', '育苗管理', '温度・灌水管理', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 25.0, '継続_開始', '中13日',
            '生育管理', '土壌・栄養管理', '除草（条間・株間）', NULL,
            '畝長さ', 10.0, 'm', 2.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '草刈機', '乗用草刈機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 85.0, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '除草（条間・株間）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 0.0, '単発', NULL,
            '播種・育苗', '播種作業', 'セルトレイ播種', NULL,
            '育苗トレイ', 1.0, '枚', 20.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 0.0, '単発', NULL,
            '播種・育苗', '播種作業', '覆土・初期灌水', NULL,
            '育苗トレイ', 1.0, '枚', 2.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 0.0, '単発', NULL,
            '播種・育苗', '育苗管理', '発芽機投入', NULL,
            '育苗トレイ', 10.0, '枚', 1.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '発芽機', '木造ハウス発芽機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 5.0, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '基肥散布', NULL,
            '耕作面積', 100.0, 'm2', 10.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 5.0, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '一次・二次耕耘', NULL,
            '耕作面積', 100.0, 'm2', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '耕運機', 'ロータリー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 10.0, '単発', NULL,
            '整地・畝立', '整地・畝立', 'マルチ張り', NULL,
            '畝長さ', 10.0, 'm', 3.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 20.0, '単発', NULL,
            '定植・直播', '定植・直播', '定植（移植作業）', NULL,
            '定植苗', 100.0, '本', 10.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '移植機', 'なかよし君', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 40.0, '単発', NULL,
            '植物保護', '病害虫管理', '農薬散布（防除）', NULL,
            '耕作面積', 100.0, 'm2', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '動噴', 'エンジン式(慣行)', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 60.0, '単発', NULL,
            '植物保護', '病害虫管理', '農薬散布（防除）', NULL,
            '耕作面積', 100.0, 'm2', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '動噴', 'エンジン式(慣行)', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 85.0, '単発', NULL,
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            '収穫量', 5.0, '本', 1.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 85.0, '単発', NULL,
            '収穫・調製', '調製・出荷', '洗浄・選果', '選果',
            '収穫量', 8.0, '本', 1.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_中', 85.0, '単発', NULL,
            '収穫・調製', '調製・出荷', 'パッキング・予冷', '箱詰め・出荷',
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', -30.0, '単発', NULL,
            '準備・計画', '栽培計画', '作付け計画策定', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', -20.0, '単発', NULL,
            '準備・計画', '栽培計画', '種子・資材手配', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', -10.0, '単発', NULL,
            '圃場基盤', '基盤整備', '明渠・暗渠泥上げ', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', -10.0, '単発', NULL,
            '圃場基盤', '基盤整備', '耕作地基礎草刈り', '耕運前草刈り',
            '耕作面積', 100.0, 'm2', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '草刈機', '乗用草刈機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 10.0, '継続_開始', '中13日',
            '環境維持', '圃場周辺管理', '外周草刈り', '畑外周の草刈り',
            '外周長', 10.0, 'm', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '草刈機', '乗用草刈機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 80.0, '継続_終了', NULL,
            '環境維持', '圃場周辺管理', '外周草刈り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 1.0, '継続_開始', '中0日',
            '播種・育苗', '育苗管理', '温度・灌水管理', NULL,
            '育苗トレイ', 10.0, '枚', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 20.0, '継続_終了', NULL,
            '播種・育苗', '育苗管理', '温度・灌水管理', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 25.0, '継続_開始', '中13日',
            '生育管理', '土壌・栄養管理', '除草（条間・株間）', NULL,
            '畝長さ', 10.0, 'm', 2.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '草刈機', '乗用草刈機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 80.0, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '除草（条間・株間）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 0.0, '単発', NULL,
            '播種・育苗', '播種作業', 'セルトレイ播種', NULL,
            '育苗トレイ', 1.0, '枚', 20.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 0.0, '単発', NULL,
            '播種・育苗', '播種作業', '覆土・初期灌水', NULL,
            '育苗トレイ', 1.0, '枚', 2.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 0.0, '単発', NULL,
            '播種・育苗', '育苗管理', '発芽機投入', NULL,
            '育苗トレイ', 10.0, '枚', 1.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '発芽機', '木造ハウス発芽機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 5.0, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '基肥散布', NULL,
            '耕作面積', 100.0, 'm2', 10.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 5.0, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '一次・二次耕耘', NULL,
            '耕作面積', 100.0, 'm2', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '耕運機', 'ロータリー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 10.0, '単発', NULL,
            '整地・畝立', '整地・畝立', 'マルチ張り', NULL,
            '畝長さ', 10.0, 'm', 3.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 20.0, '単発', NULL,
            '定植・直播', '定植・直播', '定植（移植作業）', NULL,
            '定植苗', 100.0, '本', 10.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '移植機', 'なかよし君', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 40.0, '単発', NULL,
            '植物保護', '病害虫管理', '農薬散布（防除）', NULL,
            '耕作面積', 100.0, 'm2', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '動噴', 'エンジン式(慣行)', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 60.0, '単発', NULL,
            '植物保護', '病害虫管理', '農薬散布（防除）', NULL,
            '耕作面積', 100.0, 'm2', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '動噴', 'エンジン式(慣行)', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 80.0, '単発', NULL,
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            '収穫量', 5.0, '本', 1.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 80.0, '単発', NULL,
            '収穫・調製', '調製・出荷', '洗浄・選果', '選果',
            '収穫量', 8.0, '本', 1.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'とうもろこし_プレミアム味来_遅', 80.0, '単発', NULL,
            '収穫・調製', '調製・出荷', 'パッキング・予冷', '箱詰め・出荷',
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', -30.0, '単発', NULL,
            '準備・計画', '栽培計画', '種子・資材手配', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', -20.0, '単発', NULL,
            '圃場基盤', '基盤整備', '耕作地基礎草刈り', '耕運前草刈り',
            '耕作面積', 100.0, 'm2', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '草刈機', '乗用草刈機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', -10.0, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '基肥散布', NULL,
            '耕作面積', 100.0, 'm2', 10.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', -10.0, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '一次・二次耕耘', NULL,
            '耕作面積', 100.0, 'm2', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '耕運機', 'ロータリー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', 10.0, '単発', NULL,
            '整地・畝立', '整地・畝立', 'マルチ張り', NULL,
            '畝長さ', 50.0, 'm', 10.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, 'マルチャー', 'マルチャー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', -10.0, '単発', NULL,
            '定植準備', '支柱設置', '単管設置・ネット張り', NULL,
            '畝長さ', 1.0, '本', 1.5, '時間',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', 0.0, '単発', NULL,
            '定植・直播', '定植・直播', '定植（移植作業）', NULL,
            '定植苗', 1.0, '本', 2.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', 1.0, '継続_開始', '中2日',
            '生育管理', '水・環境管理', '灌水・水深管理', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', 140.0, '継続_終了', NULL,
            '生育管理', '水・環境管理', '灌水・水深管理', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', 20.0, '継続_開始', '中20日',
            '生育管理', '植物体管理', '誘引・葉かき', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', 50.0, '継続_終了', NULL,
            '生育管理', '植物体管理', '誘引・葉かき', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', NULL, '継続_開始', '中20日',
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '動噴', '背負い式(有機)', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', NULL, '継続_開始', '中13日',
            '生育管理', '土壌・栄養管理', '除草（条間・株間）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '刈払い機', NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '除草（条間・株間）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', 60.0, '継続_開始', '中3日',
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            '収穫量', 1.0, 'kg', 20.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', 140.0, '継続_終了', NULL,
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', 60.0, '継続_開始', '中3日',
            '収穫・調製', '収穫作業', 'コンテナ運搬', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', 140.0, '継続_終了', NULL,
            '収穫・調製', '収穫作業', 'コンテナ運搬', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', 60.0, '継続_開始', '中3日',
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            '収穫量', 1.0, 'kg', 10.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', 140.0, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', 60.0, '継続_開始', '中3日',
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            '収穫量', 3.0, 'kg', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', 140.0, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', 150.0, '単発', NULL,
            '事後処理', '圃場片付', '残渣処理・マルチ剥ぎ', NULL,
            '畝長さ', 50.0, '本', 1.0, '時間',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ミニトマト_ほれまる', 150.0, '単発', NULL,
            '事後処理', '圃場片付', '資材撤去', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', NULL, '単発', NULL,
            '準備・計画', '栽培計画', '種子・資材手配', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', NULL, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '基肥散布', NULL,
            '耕作面積', 100.0, 'm2', 10.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '肥料・農薬散布機', 'ブロードキャスター', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', NULL, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '一次・二次耕耘', NULL,
            '耕作面積', 100.0, 'm2', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '耕運機', 'ロータリー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', NULL, '単発', NULL,
            '整地・畝立', '整地・畝立', 'マルチ張り', NULL,
            '畝長さ', 10.0, 'm', 3.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, 'マルチャー', 'マルチャー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', -10.0, '単発', NULL,
            '定植準備', '支柱設置', '支柱設置', NULL,
            '畝長さ', 50.0, 'm', 30.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', 0.0, '単発', NULL,
            '定植・直播', '定植・直播', '定植（移植作業）', NULL,
            '畝長さ', 50.0, 'm', 1.0, '時間',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', NULL, '継続_開始', NULL,
            '生育管理', '植物体管理', '誘引・葉かき', NULL,
            '畝長さ', 50.0, 'm', 1.0, '時間',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', NULL, '継続_終了', NULL,
            '生育管理', '植物体管理', '誘引・葉かき', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', NULL, '継続_開始', NULL,
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '動噴', '背負い式(有機)', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', 60.0, '継続_開始', '中4日',
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            '収穫量', 1.0, 'kg', 10.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', 120.0, '継続_終了', NULL,
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', 60.0, '継続_開始', '中4日',
            '収穫・調製', '収穫作業', 'コンテナ運搬', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', 120.0, '継続_終了', NULL,
            '収穫・調製', '収穫作業', 'コンテナ運搬', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', 60.0, '継続_開始', '中4日',
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            '収穫量', 1.0, 'kg', 10.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', 120.0, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', 60.0, '継続_開始', '中4日',
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            '収穫量', 1.0, 'kg', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', 120.0, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', 150.0, '単発', NULL,
            '事後処理', '圃場片付', '残渣処理・マルチ剥ぎ', NULL,
            '畝長さ', 50.0, 'm', 30.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ピーマン_京波・京ひかり', 150.0, '単発', NULL,
            '事後処理', '圃場片付', '資材撤去', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', NULL, '単発', NULL,
            '準備・計画', '栽培計画', '種子・資材手配', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', 0.0, '単発', NULL,
            '播種・育苗', '播種作業', 'ペーパーポッド播種', NULL,
            '育苗トレイ', 1.0, '枚', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', NULL, '単発', NULL,
            '播種・育苗', '育苗管理', '発芽機投入', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '発芽機', '木造ハウス発芽機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', NULL, '単発', NULL,
            '播種・育苗', '育苗管理', '温度・灌水管理', NULL,
            '育苗トレイ', 10.0, '枚', 3.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', NULL, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '基肥散布', NULL,
            '耕作面積', 100.0, 'm2', 10.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '肥料・農薬散布機', 'ブロードキャスター', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', NULL, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '一次・二次耕耘', NULL,
            '耕作面積', 100.0, 'm2', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '耕運機', 'ロータリー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', NULL, '単発', NULL,
            '整地・畝立', '整地・畝立', '溝切り', NULL,
            '畝長さ', 100.0, 'm', 10.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '管理機', '溝切・土寄せ機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', 44.0, '単発', NULL,
            '定植・直播', '定植・直播', '定植（移植作業）', NULL,
            '畝長さ', 20.0, 'm', 10.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '移植機', 'ひっぱり君', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', NULL, '継続_開始', '中21日',
            '生育管理', '土壌・栄養管理', '中耕・土寄せ', NULL,
            '畝長さ', 100.0, 'm', 10.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, '管理機', '溝切・土寄せ機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '中耕・土寄せ', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '管理機', '溝切・土寄せ機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', NULL, '継続_開始', '中21日',
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            '畝長さ', 100.0, 'm', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', 210.0, '継続_開始', '中2日',
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            '収穫量', 10.0, '本', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', 250.0, '継続_終了', NULL,
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', 210.0, '継続_開始', '中2日',
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            '収穫量', 10.0, '本', 5.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', 250.0, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', 210.0, '継続_開始', '中2日',
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            '収穫量', 5.0, 'kg', 3.0, '分',
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_龍美', 250.0, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', NULL, '単発', NULL,
            '準備・計画', '栽培計画', '種子・資材手配', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', 0.0, '単発', NULL,
            '播種・育苗', '播種作業', 'ペーパーポッド播種', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', NULL, '単発', NULL,
            '播種・育苗', '育苗管理', '発芽機投入', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '発芽機', '木造ハウス発芽機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', NULL, '単発', NULL,
            '播種・育苗', '育苗管理', '温度・灌水管理', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', NULL, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '基肥散布', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '肥料・農薬散布機', 'ブロードキャスター', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', NULL, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '一次・二次耕耘', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '耕運機', 'ロータリー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', NULL, '単発', NULL,
            '整地・畝立', '整地・畝立', '溝切り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '管理機', '溝切・土寄せ機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', 44.0, '単発', NULL,
            '定植・直播', '定植・直播', '定植（移植作業）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '移植機', 'ひっぱり君', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', NULL, '継続_開始', '中21日',
            '生育管理', '土壌・栄養管理', '中耕・土寄せ', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '管理機', '溝切・土寄せ機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '中耕・土寄せ', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '管理機', '溝切・土寄せ機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', NULL, '継続_開始', '中21日',
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', 210.0, '継続_開始', '中2日',
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', 250.0, '継続_終了', NULL,
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', 210.0, '継続_開始', '中2日',
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', 250.0, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', 210.0, '継続_開始', '中2日',
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_元蔵', 250.0, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', NULL, '単発', NULL,
            '準備・計画', '栽培計画', '種子・資材手配', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', 0.0, '単発', NULL,
            '播種・育苗', '播種作業', 'ペーパーポッド播種', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', NULL, '単発', NULL,
            '播種・育苗', '育苗管理', '発芽機投入', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '発芽機', '木造ハウス発芽機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', NULL, '単発', NULL,
            '播種・育苗', '育苗管理', '温度・灌水管理', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', NULL, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '基肥散布', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '肥料・農薬散布機', 'ブロードキャスター', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', NULL, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '一次・二次耕耘', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '耕運機', 'ロータリー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', NULL, '単発', NULL,
            '整地・畝立', '整地・畝立', '溝切り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '管理機', '溝切・土寄せ機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', 44.0, '単発', NULL,
            '定植・直播', '定植・直播', '定植（移植作業）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '移植機', 'ひっぱり君', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', NULL, '継続_開始', '中21日',
            '生育管理', '土壌・栄養管理', '中耕・土寄せ', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '管理機', '溝切・土寄せ機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '中耕・土寄せ', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '管理機', '溝切・土寄せ機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', NULL, '継続_開始', '中21日',
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', 210.0, '継続_開始', '中2日',
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', 250.0, '継続_終了', NULL,
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', 210.0, '継続_開始', '中2日',
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', 250.0, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', 210.0, '継続_開始', '中2日',
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_項羽', 250.0, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', NULL, '単発', NULL,
            '準備・計画', '栽培計画', '種子・資材手配', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', 0.0, '単発', NULL,
            '播種・育苗', '播種作業', 'ペーパーポッド播種', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', NULL, '単発', NULL,
            '播種・育苗', '育苗管理', '発芽機投入', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '発芽機', '木造ハウス発芽機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', NULL, '単発', NULL,
            '播種・育苗', '育苗管理', '温度・灌水管理', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', NULL, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '基肥散布', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '肥料・農薬散布機', 'ブロードキャスター', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', NULL, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '一次・二次耕耘', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '耕運機', 'ロータリー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', NULL, '単発', NULL,
            '整地・畝立', '整地・畝立', '溝切り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '管理機', '溝切・土寄せ機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', 44.0, '単発', NULL,
            '定植・直播', '定植・直播', '定植（移植作業）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '移植機', 'ひっぱり君', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', NULL, '継続_開始', '中21日',
            '生育管理', '土壌・栄養管理', '中耕・土寄せ', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '管理機', '溝切・土寄せ機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '中耕・土寄せ', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '管理機', '溝切・土寄せ機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', NULL, '継続_開始', '中21日',
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', 210.0, '継続_開始', '中2日',
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', 250.0, '継続_終了', NULL,
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', 210.0, '継続_開始', '中2日',
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', 250.0, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', 210.0, '継続_開始', '中2日',
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_大河', 250.0, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', NULL, '単発', NULL,
            '準備・計画', '栽培計画', '種子・資材手配', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', 0.0, '単発', NULL,
            '播種・育苗', '播種作業', 'ペーパーポッド播種', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', NULL, '単発', NULL,
            '播種・育苗', '育苗管理', '発芽機投入', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '発芽機', '木造ハウス発芽機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', NULL, '単発', NULL,
            '播種・育苗', '育苗管理', '温度・灌水管理', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', NULL, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '基肥散布', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '肥料・農薬散布機', 'ブロードキャスター', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', NULL, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '一次・二次耕耘', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '耕運機', 'ロータリー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', NULL, '単発', NULL,
            '整地・畝立', '整地・畝立', '溝切り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '管理機', '溝切・土寄せ機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', 44.0, '単発', NULL,
            '定植・直播', '定植・直播', '定植（移植作業）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '移植機', 'ひっぱり君', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', NULL, '継続_開始', '中21日',
            '生育管理', '土壌・栄養管理', '中耕・土寄せ', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '管理機', '溝切・土寄せ機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '中耕・土寄せ', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '管理機', '溝切・土寄せ機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', NULL, '継続_開始', '中21日',
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', 210.0, '継続_開始', '中2日',
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', 250.0, '継続_終了', NULL,
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', 210.0, '継続_開始', '中2日',
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', 250.0, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', 210.0, '継続_開始', '中2日',
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'ネギ_試験_リーキ', 250.0, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '水稲_コシヒカリ', NULL, '単発', NULL,
            '播種・育苗', '育苗管理', '温度・灌水管理', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '水稲_コシヒカリ', NULL, '単発', NULL,
            '圃場基盤', '基盤整備', '耕作地基礎草刈り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '草刈機', '乗用草刈機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '水稲_コシヒカリ', NULL, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '基肥散布', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '肥料・農薬散布機', 'ブロードキャスター', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '水稲_コシヒカリ', NULL, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '一次・二次耕耘', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '耕運機', 'ロータリー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '水稲_コシヒカリ', NULL, '単発', NULL,
            '整地・畝立', '整地・畝立', '畔塗り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '畔塗', '畔塗機', '要レンタル', NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '水稲_コシヒカリ', NULL, '単発', NULL,
            '整地・畝立', '整地・畝立', '代かき（粗・本）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '代掻き機', 'ハロー', '要レンタル', NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '水稲_コシヒカリ', NULL, '単発', NULL,
            '定植・直播', '定植・直播', '定植（移植作業）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '移植機', '田植え機', '要レンタル', NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '水稲_コシヒカリ', NULL, '継続_開始', NULL,
            '生育管理', '水・環境管理', '灌水・水深管理', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '水稲_コシヒカリ', NULL, '継続_終了', NULL,
            '生育管理', '水・環境管理', '灌水・水深管理', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '水稲_コシヒカリ', NULL, '継続_開始', NULL,
            '環境維持', '圃場周辺管理', '外周草刈り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '草刈機', NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '水稲_コシヒカリ', NULL, '継続_終了', NULL,
            '環境維持', '圃場周辺管理', '外周草刈り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '水稲_コシヒカリ', NULL, '継続_開始', NULL,
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '肥料・農薬散布機', 'ドローン(T10)', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '水稲_コシヒカリ', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '水稲_コシヒカリ', NULL, '単発', NULL,
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '収穫機', 'コンバイン', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '水稲_コシヒカリ', NULL, '単発', NULL,
            '収穫・調製', '調製・出荷', '乾燥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', NULL, NULL, NULL,
            '準備・計画', '栽培計画', '種子・資材手配', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', NULL, NULL, NULL,
            '圃場基盤', '基盤整備', '耕作地基礎草刈り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '草刈機', '乗用草刈機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', NULL, NULL, NULL,
            '施肥・耕起', '施肥・耕起', '基肥散布', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', NULL, NULL, NULL,
            '施肥・耕起', '施肥・耕起', '一次・二次耕耘', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '耕運機', 'ロータリー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', NULL, NULL, NULL,
            '整地・畝立', '整地・畝立', 'マルチ張り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, 'マルチャー', 'マルチャー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', -10.0, '単発', NULL,
            '定植準備', '支柱設置', '単管設置・ネット張り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', 0.0, '単発', NULL,
            '定植・直播', '定植・直播', '定植（移植作業）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', NULL, '継続_開始', NULL,
            '生育管理', '水・環境管理', '灌水・水深管理', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', NULL, '継続_終了', NULL,
            NULL, '水・環境管理', '灌水・水深管理', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', NULL, '継続_開始', NULL,
            '生育管理', '植物体管理', '誘引・葉かき', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', NULL, '継続_終了', NULL,
            '生育管理', '植物体管理', '誘引・葉かき', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', NULL, '継続_開始', NULL,
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '動噴', '背負い式(有機)', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', NULL, '継続_開始', NULL,
            '生育管理', '土壌・栄養管理', '除草（条間・株間）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '除草（条間・株間）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', 60.0, '継続_開始', '中3日',
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', 120.0, '継続_終了', NULL,
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', 60.0, '継続_開始', '中3日',
            '収穫・調製', '収穫作業', 'コンテナ運搬', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', 120.0, '継続_終了', NULL,
            '収穫・調製', '収穫作業', 'コンテナ運搬', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', 60.0, '継続_開始', '中3日',
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', 120.0, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', 60.0, '継続_開始', '中3日',
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', 120.0, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '大玉トマト_桃太郎', NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, '背負い式(有機)', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, NULL, NULL,
            '準備・計画', '栽培計画', '種子・資材手配', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, NULL, NULL,
            '圃場基盤', '基盤整備', '耕作地基礎草刈り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '草刈機', '乗用草刈機', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, NULL, NULL,
            '施肥・耕起', '施肥・耕起', '基肥散布', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, NULL, NULL,
            '施肥・耕起', '施肥・耕起', '一次・二次耕耘', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '耕運機', 'ロータリー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, NULL, NULL,
            '整地・畝立', '整地・畝立', 'マルチ張り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, 'マルチャー', 'マルチャー', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', -10.0, NULL, NULL,
            '定植準備', '支柱設置', '単管設置・ネット張り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', 0.0, '単発', NULL,
            '播種・育苗', '播種作業', 'セルトレイ播種', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '継続_開始', NULL,
            '生育管理', '水・環境管理', '灌水・水深管理', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '継続_終了', NULL,
            '生育管理', '水・環境管理', '灌水・水深管理', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', 30.0, '単発', NULL,
            '定植・直播', '定植・直播', '定植（移植作業）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '継続_開始', NULL,
            '生育管理', '植物体管理', '誘引・葉かき', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '継続_終了', NULL,
            '生育管理', '植物体管理', '誘引・葉かき', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '継続_開始', NULL,
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, '動噴', '背負い式(有機)', NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '継続_開始', NULL,
            '生育管理', '土壌・栄養管理', '除草（条間・株間）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '継続_終了', NULL,
            '生育管理', '土壌・栄養管理', '除草（条間・株間）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', 80.0, '継続_開始', NULL,
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '継続_終了', NULL,
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', 80.0, '継続_開始', NULL,
            '収穫・調製', '収穫作業', 'コンテナ運搬', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '継続_終了', NULL,
            '収穫・調製', '収穫作業', 'コンテナ運搬', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', 80.0, '継続_開始', NULL,
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', 80.0, '継続_開始', NULL,
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '継続_終了', NULL,
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', 0.0, '単発', NULL,
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '単発', NULL,
            '準備・計画', '栽培計画', '種子・資材手配', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '基肥散布', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '単発', NULL,
            '施肥・耕起', '施肥・耕起', '一次・二次耕耘', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '単発', NULL,
            '整地・畝立', '整地・畝立', 'マルチ張り', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', 0.0, '単発', NULL,
            '定植・直播', '定植・直播', '定植（移植作業）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '単発', NULL,
            '生育管理', '植物体管理', '芽かき・摘心', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '単発', NULL,
            '植物保護', '病害虫管理', '農薬散布（防除）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '単発', NULL,
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '単発', NULL,
            '収穫・調製', '収穫作業', 'コンテナ運搬', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '単発', NULL,
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '単発', NULL,
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', 0.0, NULL, NULL,
            '定植・直播', '定植・直播', '定植（移植作業）', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '継続_開始', '中0日',
            '生育管理', '土壌・栄養管理', '追肥', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, '継続_開始', NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', 60.0, '継続_開始', '中6日',
            '収穫・調製', '収穫作業', '収穫・現場選別', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, NULL, NULL,
            '収穫・調製', '調製・出荷', '洗浄・選果', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );
INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            'かぼちゃ', NULL, NULL, NULL,
            '収穫・調製', '調製・出荷', 'パッキング・予冷', NULL,
            NULL, NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL,
            NULL, NULL, NULL, NULL, NULL
        );