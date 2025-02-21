CREATE TABLE IF NOT EXISTS eggs_tbl (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    size VARCHAR(20) NOT NULL,
    weight REAL NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expected_expiry TIMESTAMP DEFAULT (DATETIME('now', '+14 days')) NOT NULL
);

-- INSERT INTO eggs_tbl (size, weight) VALUES
-- ('Small', 45.50),
-- ('Medium', 55.75),
-- ('Large', 65.00),
-- ('Extra Large', 75.25),
-- ('Small', 46.00),
-- ('Medium', 56.00),
-- ('Large', 66.00),
-- ('Extra Large', 76.00),
-- ('Small', 47.00),
-- ('Medium', 57.00),
-- ('Large', 67.00),
-- ('Extra Large', 77.00),
-- ('Small', 48.00),
-- ('Medium', 58.00),
-- ('Large', 68.00),
-- ('Extra Large', 78.00),
-- ('Small', 49.00),
-- ('Medium', 59.00),
-- ('Large', 69.00),
-- ('Extra Large', 79.00);
