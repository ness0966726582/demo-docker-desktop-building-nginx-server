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

-- 插入 staff_status 資料表資料
INSERT INTO public.staff_status (id, description)
VALUES 
    (1, 'enable'),
    (2, 'disable');

-- 插入 it_staff 資料表資料
INSERT INTO public.it_staff(
	id, full_name, status)
	VALUES (1, 'Ness Huang', '1');

