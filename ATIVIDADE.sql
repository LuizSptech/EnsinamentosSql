use mydb;


create table area (
id int primary key auto_increment,
nome varchar(100)
);


create table funcionario (
id int primary key auto_increment,
nome varchar(100),
area_id int,
supervisor_id int,
foreign key(supervisor_id) references funcionario(id),
foreign key(area_id) references area(id));


insert into area (nome) value
('Marketing'),
('Financeiro'),
('TI');


insert into funcionario (nome,area_id,supervisor_id) values
('Carla', 3, null),
('Diego', 3, 1),
('Lia', 3, 1),
('Ana', 1, null),
('Bruno', 1, 4),
('Paulo', 2, 1),
('Rita', 3, 6);


SELECT 
    funcionario.nome,
    funcionario.area_id,
    funcionario.supervisor_id,
    funcionario_supervisor.nome AS nome_supervisor
FROM funcionario
JOIN funcionario AS funcionario_supervisor
    ON funcionario.supervisor_id = funcionario_supervisor.id;
    
    
   select nome from funcionario where supervisor_id = 4;
   
   /* Exercicios */
use exercicios;
   
   
   
   
   