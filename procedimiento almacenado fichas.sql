--create procedure fichasdepago
--@idcliente tinyint,
--@idpaquete tinyint,
--@fecha datetime
--as
--begin
--	select c.nombre, c.domicilio,
--	p.nombre,p.descripcion,p.precio, 
--	r.enganche, r.mensualidad, r.fecha 
--	from recibos r
--	join paquetes p on r.idpaquete = p.idpaquete
--	join clientes c on r.idcliente = c.idcliente
--	where r.idcliente = @idcliente and r.idpaquete = @idpaquete
--end
--go

alter procedure fichasdepago
@idcliente tinyint,
@idpaquete tinyint,
@fecha datetime
as
begin
	select c.nombre, c.domicilio,
	p.nombre,p.descripcion,p.precio, 
	r.enganche, r.mensualidad, r.fecha,
	dateadd(month,1, fecha) as mensualidad1,
	dateadd(month,2, fecha) as mensualidad2,
	dateadd(month,3, fecha) as mensualidad3
	from recibos r
	join paquetes p on r.idpaquete = p.idpaquete
	join clientes c on r.idcliente = c.idcliente
	where r.idcliente = 29 and r.idpaquete = 4
end