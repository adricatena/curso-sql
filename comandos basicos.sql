-- Borrar tabla
DROP TABLE IF EXISTS employees

-- Crear tabla
CREATE TABLE IF NOT EXISTS employees(
	id int,
	married boolean,
	name varchar(100),
	genre char(1),
	salary numeric(8, 2),
	birthday date,
	start_at time
)

-- modificar tabla
alter table employees rename to employees2021
alter table employees add column email varchar(50)

-- Insertar Datos
insert into employees(id, married, name, genre, salary, birthday, start_at)
	values(1, true, 'Juan', 'M', 10000.23, '1992-05-13', '08:30:00')
insert into employees(id, married, name, genre, salary)
	values(2, true, 'Pedro', 'M', 109000.23)
insert into employees(id, married, name, genre, salary)
	values(3, true, 'Pablo', 'M', 1098000.23)
	
-- Ver datos
select * from employees