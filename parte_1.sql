CREATE TABLE IF NOT EXISTS kopas(
  id BIGSERIAL PRIMARY KEY,
  selecao VARCHAR(128) UNIQUE,
  qnt_kopas INTEGER
);

insert into 
	kopas(selecao,qnt_kopas) 
values
	('Brasil',5),
	('Alemanha',5),
	('Itália',4),
	('Argentina',2),
	('França',2),
	('Uruguai',2),
	('Inglaterra',1),
	('Espanha',1),
	('Japão',1);

select selecao,qnt_kopas from kopas;


update kopas set qnt_kopas=4 where id=2;
delete from kopas where selecao ='Japão';


select * from kopas;

