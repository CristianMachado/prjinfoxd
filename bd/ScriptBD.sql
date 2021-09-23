-- Linha abaixo cria banco
create database dbinfoxd;

-- Linha abaixo seleciona o banco a ser usado



-- o bloco abaixo criar tabela de usuarios
create table tbUsuario(
	iduser int primary key,
	usuario varchar(50) not null,
    fone varchar(15),
    login varchar(15) not null unique, 
    senha varchar(15) not null
);

-- linha abaixo  descreve a tabela
describe tbusuario;

-- As linhas abaixo insere dados na tabela usuario
insert into tbUsuario(iduser, usuario, fone, login, senha)
values(5, 'Cristian55', '99401-764', 'cristian8d58', '123');

insert into tbUsuario(iduser, usuario, fone, login, senha)
values(2, 'Tiane', '98403-794', 'tiane69', '123'),
(3, 'Ana', '99852-853', 'mãe', '123');

insert into tbUsuario(iduser, usuario, fone, login, senha)
values(4, 'Administrador', '00000000', 'admin', 'admin');

insert into tbUsuario(usuario, fone, login, senha)
values('Administrdasdsaador', '00000000', 'adminddffd', 'admin');

-- A linha abaixo exibe os dados da tabela
select * from tbUsuario;
-- A linha abaixo modifica as linhas da tabela
update tbUsuario set fone='88888888' where iduser= 4;

-- A linha abaixo deleta os dados da tabela 
delete from tbUsuario where iduser= 7;

-- A linha abaixo cria a tabela de clientes

create table tbClientes(
	idcliente int primary key auto_increment,
    nomeCli varchar(100) not null,
    endCli varchar(100),
    foneCli varchar(50),
    emailCli varchar(50)
);

-- -----------------------------------------------------------------------------------------------
-- As linhas abaixo refere-se a como alterar a coluna ID em auto incremento onde primero se exclui
-- o atributo primarykey para depois modificar para o desejado
ALTER TABLE tbUsuario DROP primary key;

alter table tbUsuario
modify iduser int primary key auto_increment;
-- ------------------------------------------------------------------------------------------------

-- Inserindo dados na tabela cliente
insert into tbclientes(nomeCli, endCli, foneCli, emailCli)
values('Devid', 'Rua trindade, 1003', '99993333', 'devid@teste.com'),
('Guilherme', 'Rua santa fé, 165', '887774452', 'guilherme@teste.com'),
('Luiz', 'Rua são luiz, 1022', '555448852', 'luiz@teste.com');

-- visualizando dados
select * from tbclientes;

show tables;

-- A linha abaixo cria a tabela order de serviço

create table tbos(
	idos int primary key auto_increment,
    data_os timestamp default current_timestamp,
    equipamento varchar(100) not null,
    defeito varchar(150) not null,
    servico varchar(150),
    tecnico varchar(30),
    valor decimal (10,2),
    idcliente int not null,
    foreign key (idcliente) references tbClientes(idcliente)
);
select * from tbclientes;

insert into tbos(equipamento,defeito,servico,tecnico,valor, idcliente)
values('Notebook','Não liga','Troca Bateria','Cristian','350.00', 1 ),
	('Desktop', 'Liga sem Imagem', 'Troca Memoria Ram','Cristian', '150,00', 2),
    ('Desktop Gamer', 'Liga mais sem SO', 'Formatar','Cristian', '120,00', 3);

select * from tbos;

-- Codigo abaixo tras informação de duas tabelas
use dbinfoxd;
select
O.idos, equipamento, defeito, servico, valor,
C.nomecli, fonecli
from tbos as O inner join tbclientes as C on (O.idcliente = C.idcliente); 

select o.equipamento, valor, c.nomecli, fonecli from tbos as o inner join tbclientes as c on o.idcliente = c.idcliente;
show tables;

drop table tbcliente;

