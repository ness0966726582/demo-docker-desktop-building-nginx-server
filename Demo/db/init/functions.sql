CREATE VIEW it_staff_with_status AS
SELECT 
    it_staff.id AS staff_id,
    it_staff.full_name,
    it_staff.status,
    staff_status.description AS status_description
FROM 
    it_staff
JOIN 
    staff_status
ON 
    it_staff.status = staff_status.id;

SELECT * FROM it_staff_with_status;
