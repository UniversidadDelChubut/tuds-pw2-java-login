rollback;
begin;
CREATE TABLE public.usuario (
	id serial,
	username varchar(15) NOT NULL,
	passwd char(32) not null,
	primary key(id),
	unique(username)
);

create table public.rol (
	id serial,
	rolename varchar(15) not null,
	primary key(id),
	unique(rolename)
);

create table public.usuario_rol (
	usuario_id int not null,
	rol_id int not null,
	primary key(usuario_id, rol_id)
);

insert into public.usuario(username, passwd)
values
	('dios', md5('1234')),
	('pedro', md5('1234')),
	('maria', md5('1234')),
	('jose', md5('1234'))
;

insert into public.rol(rolename)
values
	('manager-gui'), ('manager-script'),
	('admin'), ('usuario')
;

insert into public.usuario_rol(usuario_id, rol_id)
select 1, r.id		-- martin tendra todos los roles
from public.rol r
;

insert into public.usuario_rol(usuario_id, rol_id)
values
	(2,3),	-- pedro va a ser admin
	(3,3),	-- maria va a ser admin
	(4,4)	-- jose va a ser usuario
;

create view public.vw_usuarios_tomcat as 
select
	u.username as nombre_usuario,
	u.passwd as password,
	r.rolename as nombre_rol
from public.usuario u
join public.usuario_rol ur 
	on u.id = ur.usuario_id
join public.rol r 
	on ur.rol_id = r.id
;	

commit;