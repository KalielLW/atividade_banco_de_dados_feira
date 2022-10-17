create database feira;

use feira;

create table estoque (
id_estoque int primary key auto_increment,
Tipo_Produto varchar(15),
Quantidade int,
idproduto int,
idfornecedor int,
foreign key (idproduto)
references produto(id_produto),
foreign key (idfornecedor)
references fornecedor (id_fornecedor)

);

create table produto (
id_produto int primary key auto_increment,
Tipo_Produtos varchar(15),
Nome_Produto varchar(15),
Valor double

);

create table fornecedor (
id_fornecedor int primary key auto_increment,
Nome_Fornecedor varchar(30),
Endereco varchar(40),
Telefone int,
email varchar(40)


);

insert into estoque values (null,'fruta', 25,1,1);
insert into produto values (null,'fruta', 'morango', 4.50);
insert into fornecedor values (null,'Frutas e Verduras', 'Rua Benjamin Constant', 478288585, 'mdwoamdw@gmail.com');

select estoque.id_estoque, estoque.Tipo_Produto, estoque.Quantidade,
	   produto.id_produto, produto.Tipo_Produtos, produto.Nome_Produto, produto.Valor,
	   fornecedor.id_fornecedor, fornecedor.Nome_Fornecedor, fornecedor.Endereco, fornecedor.Telefone, fornecedor.email
	from estoque
	inner join produto
	on produto.id_produto = estoque.idproduto
	inner join fornecedor
	on fornecedor.id_fornecedor = estoque.idfornecedor
	