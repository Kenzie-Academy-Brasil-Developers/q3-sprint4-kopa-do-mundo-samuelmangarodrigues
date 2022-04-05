alter table 
	kopas 
add column 
	pts integer;

update kopas set pts=237 where id = 1;
update kopas set pts=221 where id = 2;
update kopas set pts=156 where id = 3;
update kopas set pts=144 where id = 4;
update kopas set pts=115 where id = 5;
update kopas set pts=84 where id = 6;
update kopas set pts=108 where id =7;
update kopas set pts=105 where id =8;


select * from kopas;





CREATE table if not exists estadios(
  id BIGSERIAL PRIMARY KEY,
  edicao TEXT,
  ano VARCHAR(4),
  estadio TEXT,
  locale VARCHAR(128),
  publico_pagante integer
);


insert into 
	estadios(edicao,ano,estadio,locale,publico_pagante) 
values 
	('I','1930','Estádio Centenário','Montevidéu',68346),
	('II','1934','Estádio do Partido Nacional Fascista','Roma',55000),
	('III','1938','Estádio Olímpico Yves-du-Manoir','Colombes',45000),
	('IV','1950','Estádio do Maracanã','Rio de Janeiro',173850),
	('V','1954','Estádio Wankdorf','Berna',62500),
	('VI','1958','Estádio Råsunda','Solna',49737),
	('VII','1962','Estádio Nacional do Chile','Santiago',68679),
	('VIII','1966','Estádio de Wembley','Londres',96924),
	('IX','1970','Estádio Azteca','Cidade do México',107412),
	('X','1974','Estádio Olímpico de Munique','Munique',78200),
	('XI','1978','Estádio Monumental de Núñez','Buenos Aires',71483),
	('XII','1982','Estádio Santiago Bernabéu','Madrid',90000),
	('XIII','1986','Estádio Azteca','Cidade do México',114600),
	('XIV','1990','Estádio Olímpico de Roma','Roma',73603),
	('XV','1994','Rose Bowl','Pasadena',94194),
	('XVI','1998','Stade de France','Saint-Denis',80000),
	('XVII','2002','Estádio Internacional de Yokohama','Yokohama',69029),
	('XVIII','2006','Estádio Olímpico de Berlim','Berlim',69000),
	('XIX','2010','Soccer City','Joanesburgo',84490),
	('XX','2014','Estádio do Maracanã','Rio de Janeiro',74738),	
	('XXI','2018','Estádio Lujniki','Moscou',78011);



select * from estadios;

select * from estadios where publico_pagante >=100000

select * from estadios where publico_pagante > 50000 and publico_pagante < 100000;

select * from estadios where estadio like '%y';


ALTER TABLE
  estadios  
ALTER COLUMN
  ano  TYPE integer
USING ano::integer;

select * from estadios;