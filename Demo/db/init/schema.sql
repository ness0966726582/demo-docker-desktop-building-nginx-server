
-- 創建 staff_status 資料表
CREATE TABLE staff_status (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

-- 創建 it_staff 資料表，並設定外鍵關聯至 staff_status
CREATE TABLE it_staff (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    status INTEGER NOT NULL,
    CONSTRAINT fk_staff_status
        FOREIGN KEY (status) REFERENCES staff_status(id)
);