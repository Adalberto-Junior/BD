 DROP database Restauracao
CREATE database Restauracao
GO

use Restauracao

CREATE TABLE Restaurante(
	Nome	       varchar(50)		not null,	
	Endereco	   varchar(50)   	not null,
	NumGerente	   char(9)			,
	primary key(Nome)	
	);
	
CREATE TABLE Mesa(
	Numero		   int				not null,
	Estado	       varchar(30)		not null,	
	NumCliente     int				,	
	NomeR	       varchar(50)		not null,
	primary key(Numero),
	foreign key(NomeR) references Restaurante(Nome)
	);

CREATE TABLE Empregado(
	NumFuncio	   char(9)			not null,
	Nome	       varchar(50)		not null,
	NIF			   char(9)			not null,
	Endereco	   varchar(50)   	not null,
	Telefone	   char(9)			not null,
	Salario		   money			not null,
	NomeR	       varchar(50)		not null,
	primary key(NumFuncio),
	foreign key(NomeR) references Restaurante(Nome)
	);

Alter Table Restaurante add
	foreign key(NumGerente) references Empregado(NumFuncio);
	

CREATE TABLE Pedido(
	Numero		   int				not null,
	primary key(Numero),
	foreign key(Numero) references Mesa(Numero)
	);

CREATE TABLE Produto(
	Nome	       varchar(60)		not null,	
	Preco		   money			not null,
	Iva			   real				not null,
	NomeR		   varchar(50)   	not null,
	QuantiDisp	   int				not null,
	primary key(Nome),
	foreign key(NomeR) references Restaurante(Nome),
	);

CREATE TABLE Seleciona(
	NumPedido  int				not null,
	NomeP   varchar(60)		not null,
	primary key(NumPedido,NomeP),
	foreign key(NomeP) references Produto(Nome),
	foreign key(NumPedido) references Pedido(Numero)
	);

CREATE TABLE Conta(
	CodigoTalao				   int			not null,
	Numero					   int			not null,
	NIF						   char(9)		,
	DataC					   date			not null,
	QuantiVend				   int			not null,
	Valor_total				   real			not null,
	valor_Base				   real			not null,
	Iva						   real			not null,
	Endereco_Restaurante	   varchar(50)  not null,
	primary key(CodigoTalao, Numero), 
	foreign key(Numero) references pedido(Numero),
	);

CREATE TABLE Entrada(
	DataV	       date				not null,	
	NomeProd	   varchar(60)		not null,
	primary key(NomeProd),
	foreign key(NomeProd) references Produto(Nome),
	);

CREATE TABLE Bebida(
	DataV	       date				not null,	
	NomeProd	   varchar(60)		not null,
	primary key(NomeProd),
	foreign key(NomeProd) references Produto(Nome),
	);

CREATE TABLE Cafe(
	DataV	       date				not null,	
	NomeProd	   varchar(60)		not null,
	primary key(NomeProd),
	foreign key(NomeProd) references Produto(Nome),

	);
CREATE TABLE Sobremesa(
	DataV	       date				not null,
	TipoConf	   varchar(30)      not null,
	NomeProd	   varchar(60)		not null,
	primary key(NomeProd),
	foreign key(NomeProd) references Produto(Nome),
	);

CREATE TABLE PratoNormal(
	Tipo	       varchar(30)		not null,	
	NomeProd	   varchar(60)		not null,
	primary key(NomeProd),
	foreign key(NomeProd) references Produto(Nome),
	);


CREATE TABLE Ingrediente(
	Nome		   varchar(50)		not null,
	DataV	       date				not null,
	Fk_PratoNormal varchar(60)			not null,
	primary key(Nome),
	foreign key(Fk_PratoNormal) references PratoNormal(NomeProd),
	);






