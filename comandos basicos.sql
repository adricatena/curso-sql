CREATE DATABASE pagila

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

--crear tabla con id incremental y PK
create table if not exists employees (
	id serial primary key,
	married boolean,
	name varchar(100),
	genre char(1),
	salary numeric(8, 2),
	birthday date,
	start_at time
);

-- crear tabla con pk y campo obligatorio (not null)
create table if not exists employees (
	id serial primary key,
	married boolean,
	name varchar(100) not null,
	genre char(1),
	salary numeric(8, 2),
	birthday date,
	start_at time
);

-- crear tabla con campo unico
create table if not exists employees (
	id serial primary key,
	married boolean,
	name varchar(100) not null,
	genre char(1),
	mail varchar(50) unique,
	salary numeric(8, 2),
	birthday date,
	start_at time
);

-- crear tabla con checkeo de datos
create table if not exists employees (
	id serial primary key,
	married boolean,
	name varchar(100) not null,
	genre char(1),
	mail varchar(50) unique,
	salary numeric(8, 2) check (salary > 100),
	birthday date check (birthday > '1991-01-01'),
	start_at time
);

-- modificar tabla
alter table employees rename to employees2021
alter table employees add column email varchar(50)
alter table employees drop column if exists salary

-- Insertar Datos
insert into employees(id, married, name, genre, salary, birthday, start_at)
	values(1, true, 'Juan', 'M', 10000.23, '1992-05-13', '08:30:00')
insert into employees(id, married, name, genre, salary)
	values(2, true, 'Pedro', 'M', 109000.23)
insert into employees(id, married, name, genre, salary)
	values(3, true, 'Pablo', 'M', 1098000.23)
	
-- insertar datos con id como PK
insert into employees(married, name, genre, salary, birthday, start_at)
	values(true, 'Juan', 'M', 10000.23, '1992-05-13', '08:30:00');
insert into employees(married, name, genre, salary, birthday, start_at)
	values(true, 'Pedro', 'M', 109000.23, '1992-05-13', '08:30:00')
	
-- insertar datos con pk y campos obligatorios (la 1er sentencia da error)
insert into employees(married, genre, salary, birthday, start_at)
	values(true, 'M', 10000.23, '1992-05-13', '08:30:00');
insert into employees(married, name, genre, salary, birthday, start_at)
	values(true, 'Juan', 'M', 10000.23, '1992-05-13', '08:30:00');

-- insertar datos con campo unico (mail)
insert into employees(married, name, mail, genre, salary, birthday, start_at)
	values(true, 'Juan', 'aa@aa.co' , 'M', 10000.23, '1992-05-13', '08:30:00');
insert into employees(married, name, mail, genre, salary, birthday, start_at)
	values(true, 'Juan', 'bb@aa.co' , 'M', 10000.23, '1992-05-13', '08:30:00');

-- insertar datos con chequeo de datos (salary > 100 y birthday >  1991)
insert into employees(married, name, mail, genre, salary, birthday, start_at)
	values(true, 'Juan', 'aa@aa.co' , 'M', 100.23, '1992-05-13', '08:30:00');
insert into employees(married, name, mail, genre, salary, birthday, start_at)
	values(true, 'Juan', 'bb@aa.co' , 'M', 10000.23, '1989-05-13', '08:30:00');
insert into employees(married, name, mail, genre, salary, birthday, start_at)
	values(true, 'Juan', 'bb@aa.co' , 'M', 10000.23, '1991-01-02', '08:30:00');


-- Ver datos
select * from employees