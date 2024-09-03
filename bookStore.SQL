create database bookstore;

use bookstore;

create table Fornecedores(
	IDfornecedor int not null auto_increment primary key,
    nome varchar(255) not null,
    CNPJ varchar(18) not null,
    Contato varchar(14) not null
) engine = MyISAM;

create table Livros(
	IDlivros int not null auto_increment primary key,
    IDfornecedor int not null,
    Titulo varchar(255) not null,
    Autor varchar(255) not null,
    Preco decimal(10,2) not null,
    QNTDestoque int not null,
    foreign key(IDfornecedor) references Fornecedores(IDforncedor)
) engine = MyISAM;
    
create table Cliente(
	IDcliente int not null auto_increment primary key,
    IDlivros int not null,
	Nome varchar(255) not null,
	Email varchar(255) not null,
	Telefone varchar(14) not null,
    foreign key(IDlivros) references Livros(IDlivros)
    ) engine = MyISAM;
    
create table Vendas(
	IDvendas int not null auto_increment primary key,
    IDcliente int not null,
    DataVenda date not null,
    Cliente varchar(255) not null,
    Livros varchar(255) not null,
    Total decimal(10,2) not null,
    foreign key(IDcliente) references Cliente(IDcliente)
    ) engine = MyISAM;
    
INSERT INTO Fornecedores(nome, contato, CNPJ) VALUES ('Vitor','1234567','11111111111');

INSERT INTO Livros(IDFornecedor, titulo, autor, preco, QNTDestoque) VALUES (1,'A ilha misteriosa','Julio Verne',75.12,550);

INSERT INTO Vendas(IDlivro, cliente, dataVenda, livros, total) VALUES (1,'Gustavo','2024/09/14',5,72.61);

INSERT INTO Cliente(IDvenda, nome, email, telefone) VALUES (1,'Gustavo','gustavo@gmail.com','437716271');