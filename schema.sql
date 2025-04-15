CREATE TABLE IF NOT EXISTS eggs_tbl (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    size VARCHAR(20) NOT NULL,
    weight REAL NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expected_expiry TIMESTAMP DEFAULT (DATETIME('now', '+14 days')) NOT NULL
);

-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Medium', 57.2, datetime('now', '-1 minute'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Large', 61.8, datetime('now', '-2 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Small', 52.5, datetime('now', '-3 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Jumbo', 66.1, datetime('now', '-4 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Medium', 55.9, datetime('now', '-5 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Large', 63.3, datetime('now', '-6 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Medium', 58.0, datetime('now', '-7 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Small', 50.8, datetime('now', '-8 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Large', 60.5, datetime('now', '-9 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Jumbo', 68.9, datetime('now', '-10 minutes'));

-- -- Batch 2: Slightly Older
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Medium', 59.1, datetime('now', '-15 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Small', 53.7, datetime('now', '-20 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Large', 64.0, datetime('now', '-25 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Jumbo', 70.2, datetime('now', '-30 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Medium', 56.6, datetime('now', '-35 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Large', 62.1, datetime('now', '-40 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Small', 51.9, datetime('now', '-45 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Medium', 57.8, datetime('now', '-50 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Jumbo', 65.5, datetime('now', '-55 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Large', 61.1, datetime('now', '-1 hour'));

-- -- Batch 3: A few hours ago
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Small', 54.2, datetime('now', '-2 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Medium', 55.2, datetime('now', '-2 hours', '-10 minutes'));INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Large', 60.8, datetime('now', '-2 hours', '-20 minutes'));INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Jumbo', 67.4, datetime('now', '-2 hours', '-30 minutes'));INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Medium', 58.4, datetime('now', '-3 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Large', 63.9, datetime('now', '-3 hours', '-15 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Small', 50.1, datetime('now', '-3 hours', '-30 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Jumbo', 71.0, datetime('now', '-4 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Medium', 56.3, datetime('now', '-4 hours', '-20 minutes'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Large', 62.7, datetime('now', '-5 hours'));

-- -- Batch 4: Yesterday
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Small', 52.0, datetime('now', '-1 day'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Jumbo', 69.5, datetime('now', '-1 day', '-1 hour'));INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Medium', 59.8, datetime('now', '-1 day', '-2 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Large', 64.5, datetime('now', '-1 day', '-3 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Small', 53.1, datetime('now', '-1 day', '-4 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Medium', 55.5, datetime('now', '-1 day', '-5 hours'));INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Large', 61.4, datetime('now', '-1 day', '-6 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Jumbo', 66.8, datetime('now', '-1 day', '-7 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Medium', 57.0, datetime('now', '-1 day', '-8 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Small', 51.3, datetime('now', '-1 day', '-9 hours'));

-- -- Batch 5: Two days ago
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Large', 63.0, datetime('now', '-2 days'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Jumbo', 72.3, datetime('now', '-2 days', '-1 hour'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Medium', 56.1, datetime('now', '-2 days', '-2 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Small', 54.8, datetime('now', '-2 days', '-3 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Large', 60.2, datetime('now', '-2 days', '-4 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Medium', 58.9, datetime('now', '-2 days', '-5 hours'));INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Jumbo', 65.2, datetime('now', '-2 days', '-6 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Small', 50.5, datetime('now', '-2 days', '-7 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Large', 62.2, datetime('now', '-2 days', '-8 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Medium', 57.7, datetime('now', '-2 days', '-9 hours'));

-- -- Batch 6: Three days ago
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Jumbo', 68.0, datetime('now', '-3 days'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Small', 53.9, datetime('now', '-3 days', '-2 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Medium', 55.1, datetime('now', '-3 days', '-4 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Large', 61.6, datetime('now', '-3 days', '-6 hours'));
-- INSERT INTO eggs_tbl (size, weight, created_at) VALUES ('Jumbo', 70.5, datetime('now', '-3 days', '-8 hours'));


