/*Please add ; after each select statement*/
CREATE PROCEDURE emptyDepartments()
BEGIN
    SELECT dep_name
    FROM departments WHERE id NOT IN (
        SELECT DISTINCT department FROM employees
    );
END