CREATE TABLE IF NOT EXISTS eggs_tbl (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    weight REAL NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expected_expiry TIMESTAMP DEFAULT (DATETIME('now', '+14 days')) NOT NULL
);

-- INSERT INTO eggs_tbl (weight) VALUES (57.2);
-- INSERT INTO eggs_tbl (weight) VALUES (61.8);
-- INSERT INTO eggs_tbl (weight) VALUES (52.5);
-- INSERT INTO eggs_tbl (weight) VALUES (66.1);
-- INSERT INTO eggs_tbl (weight) VALUES (55.9);
-- INSERT INTO eggs_tbl (weight) VALUES (63.3);
-- INSERT INTO eggs_tbl (weight) VALUES (58.0);
-- INSERT INTO eggs_tbl (weight) VALUES (50.8);
-- INSERT INTO eggs_tbl (weight) VALUES (60.5);
-- INSERT INTO eggs_tbl (weight) VALUES (68.9);

-- -- Batch 2: Slightly Older
-- INSERT INTO eggs_tbl (weight) VALUES (59.1);
-- INSERT INTO eggs_tbl (weight) VALUES (53.7);
-- INSERT INTO eggs_tbl (weight) VALUES (64.0);
-- INSERT INTO eggs_tbl (weight) VALUES (70.2);
-- INSERT INTO eggs_tbl (weight) VALUES (56.6);
-- INSERT INTO eggs_tbl (weight) VALUES (62.1);
-- INSERT INTO eggs_tbl (weight) VALUES (51.9);
-- INSERT INTO eggs_tbl (weight) VALUES (57.8);
-- INSERT INTO eggs_tbl (weight) VALUES (65.5);
-- INSERT INTO eggs_tbl (weight) VALUES (61.1);

-- -- Batch 3: A few hours ago
-- INSERT INTO eggs_tbl (weight) VALUES (54.2);
-- INSERT INTO eggs_tbl (weight) VALUES (55.2);
-- INSERT INTO eggs_tbl (weight) VALUES (60.8);
-- INSERT INTO eggs_tbl (weight) VALUES (67.4);
-- INSERT INTO eggs_tbl (weight) VALUES (58.4);
-- INSERT INTO eggs_tbl (weight) VALUES (63.9);
-- INSERT INTO eggs_tbl (weight) VALUES (50.1);
-- INSERT INTO eggs_tbl (weight) VALUES (71.0);
-- INSERT INTO eggs_tbl (weight) VALUES (56.3);
-- INSERT INTO eggs_tbl (weight) VALUES (62.7);

-- -- Batch 4: Yesterday
-- INSERT INTO eggs_tbl (weight) VALUES (52.0);
-- INSERT INTO eggs_tbl (weight) VALUES (69.5);INSERT INTO eggs_tbl (weight) VALUES (59.8);
-- INSERT INTO eggs_tbl (weight) VALUES (64.5);
-- INSERT INTO eggs_tbl (weight) VALUES (53.1);
-- INSERT INTO eggs_tbl (weight) VALUES (55.5);INSERT INTO eggs_tbl (weight) VALUES (61.4);
-- INSERT INTO eggs_tbl (weight) VALUES (66.8);
-- INSERT INTO eggs_tbl (weight) VALUES (57.0);
-- INSERT INTO eggs_tbl (weight) VALUES (51.3);

-- -- Batch 5: Two days ago
-- INSERT INTO eggs_tbl (weight) VALUES (63.0);
-- INSERT INTO eggs_tbl (weight) VALUES (72.3);
-- INSERT INTO eggs_tbl (weight) VALUES (56.1);
-- INSERT INTO eggs_tbl (weight) VALUES (54.8);
-- INSERT INTO eggs_tbl (weight) VALUES (60.2);
-- INSERT INTO eggs_tbl (weight) VALUES (58.9);INSERT INTO eggs_tbl (weight) VALUES (65.2);
-- INSERT INTO eggs_tbl (weight) VALUES (50.5);
-- INSERT INTO eggs_tbl (weight) VALUES (62.2);
-- INSERT INTO eggs_tbl (weight) VALUES (57.7);

-- -- Batch 6: Three days ago
-- INSERT INTO eggs_tbl (weight) VALUES (68.0);
-- INSERT INTO eggs_tbl (weight) VALUES (53.9);
-- INSERT INTO eggs_tbl (weight) VALUES (55.1);
-- INSERT INTO eggs_tbl (weight) VALUES (61.6);
-- INSERT INTO eggs_tbl (weight) VALUES (70.5);


