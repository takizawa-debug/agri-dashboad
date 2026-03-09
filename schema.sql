DROP TABLE IF EXISTS fields;
DROP TABLE IF EXISTS field_designs;
DROP TABLE IF EXISTS season_plans;
DROP TABLE IF EXISTS varieties_master;
DROP TABLE IF EXISTS process_master;
DROP TABLE IF EXISTS work_master;
DROP TABLE IF EXISTS material_master;
DROP TABLE IF EXISTS equipment_master;
DROP TABLE IF EXISTS tasks;

CREATE TABLE fields (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    folder_name TEXT,
    name TEXT NOT NULL,
    geometry_type TEXT,
    polygon_coords TEXT,
    rep_elev REAL,
    max_elev REAL,
    min_elev REAL,
    elev_diff REAL,
    slope REAL,
    aspect REAL,
    area_total REAL,
    perimeter REAL,
    centroid TEXT,
    notes TEXT,
    location_url TEXT
);

CREATE TABLE varieties_master (
    id TEXT PRIMARY KEY,
    item_name TEXT NOT NULL,
    variety_name TEXT NOT NULL,
    crop_type TEXT,
    seed_ratio REAL,
    yield_ratio REAL,
    unit TEXT,
    auto_name TEXT,
    color TEXT
);

CREATE TABLE season_plans (
    id TEXT PRIMARY KEY,
    variety_name TEXT NOT NULL,
    nursery_location TEXT,
    field_name TEXT,
    base_date DATETIME,
    base_work TEXT,
    harvest_date DATETIME,
    seed_count INTEGER,
    seedling_count INTEGER,
    yield_amount INTEGER,
    yield_unit TEXT
);

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
    base_qty REAL,
    base_unit TEXT,
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

CREATE TABLE field_designs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    ridge_width REAL,
    ridge_gap REAL,
    row_count INTEGER,
    row_gap REAL,
    plant_spacing REAL,
    ridge_angle REAL,
    total_ridge_count INTEGER,
    total_plant_count INTEGER,
    ridges_json TEXT
);

CREATE TABLE work_master (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    major_category TEXT NOT NULL,
    mid_category TEXT NOT NULL,
    minor_category TEXT NOT NULL
);

CREATE TABLE material_master (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    major_category TEXT NOT NULL,
    mid_category TEXT NOT NULL,
    product_name TEXT NOT NULL,
    description TEXT
);

CREATE TABLE equipment_master (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    category TEXT NOT NULL,
    name TEXT NOT NULL
);

CREATE TABLE tasks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    status TEXT DEFAULT '未',
    calculation_basis TEXT,
    frequency TEXT,
    major_category TEXT,
    mid_category TEXT,
    minor_category TEXT,
    field_name TEXT,
    unit_category TEXT,
    unit_qty REAL,
    unit TEXT,
    base_work_hours REAL,
    time_unit TEXT,
    material_major TEXT,
    material_mid TEXT,
    material_name TEXT,
    material_desc TEXT,
    material_req_qty REAL,
    material_unit TEXT,
    equipment_category TEXT,
    equipment_name TEXT,
    base_date DATETIME,
    crop_name TEXT,
    actual_hours REAL,
    actual_material_qty REAL,
    worker_name TEXT,
    memo TEXT
);
