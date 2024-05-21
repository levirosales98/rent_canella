create database rent_canella;
go

use rent_canella;
go

create table dbo.vehiculos
(
	veh_id int not null identity(1,1),
	veh_matricula varchar(50) not null,
	veh_marca varchar(100) not null,
	veh_color varchar(50) not null,
	veh_precio_alquiler decimal(9,2) not null,
	constraint pk_veh_id primary key(veh_id)
);
go

-- INSERT PROC
create proc sp_insert_vehiculos
@veh_matricula varchar(50),
@veh_marca varchar(100),
@veh_color varchar(50),
@veh_precio_alquiler decimal(9,2)
as
begin
	insert into vehiculos(veh_matricula, veh_marca, veh_color, veh_precio_alquiler)
	values(@veh_matricula, @veh_marca, @veh_color, @veh_precio_alquiler);
end;
go

-- SELECT PROC
create proc sp_select_vehiculos
as
begin
	select * from vehiculos;
end;
go

-- UPDATE PROC
create proc sp_update_vehiculos
@veh_id int,
@veh_matricula varchar(50),
@veh_marca varchar(100),
@veh_color varchar(50),
@veh_precio_alquiler decimal(9,2)
as
begin
	update vehiculos set
	veh_matricula = @veh_matricula,
	veh_marca = @veh_marca,
	veh_color = @veh_color,
	veh_precio_alquiler = @veh_precio_alquiler
	where veh_id = @veh_id;
end;
go

-- DELETE PROC
create proc sp_delete_vehiculos
@veh_id int
as
begin
	delete from vehiculos
	where veh_id = @veh_id;
end;
go

-- SEARCH PROC
create proc sp_search_vehiculos
@veh_id int
as
begin
	select * from vehiculos
	where veh_id = @veh_id
end;
go

exec sp_insert_vehiculos 'P952POQ', 'Audi', 'Blanco', 1200.00;
exec sp_insert_vehiculos 'P147ASB', 'Mercedes-Benz', 'Blanco', 1400.00;
exec sp_insert_vehiculos 'P001ASE', 'Ford', 'Azul Marino', 1500.00;
exec sp_insert_vehiculos 'P369ASD', 'Kia', 'Verde', 1700.00;
exec sp_insert_vehiculos 'P911AWW', 'BMW', 'Negro', 1300.00;
exec sp_insert_vehiculos 'P369ASD', 'Ferrari', 'Amarillo', 5000.00;

exec sp_select_vehiculos;