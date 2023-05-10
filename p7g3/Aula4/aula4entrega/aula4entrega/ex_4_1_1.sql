DROP database rent_a_car
CREATE database rent_a_car
GO
USE rent_a_car
CREATE TABLE Cliente(
	nome		VARCHAR(40)		not null,	
	endereco	VARCHAR(60)		not null,
	num_carta	char(9)			not null,
	NIF			char(9)			not null,
	unique(num_carta),
	primary key(NIF));

CREATE TABLE Balcao(
	numero		integer			not null,	
	nome		VARCHAR(40)		not null,	
	endereco	VARCHAR(60)		not null,
	
	primary key(numero));

CREATE TABLE Tipo_Veiculo(
	codigo		char(9)			not null,	
	arcondicionado	char		not null,	
	designacao	VARCHAR(60)		not null,
	unique(designacao),
	primary key(codigo));

CREATE TABLE Veiculo(
	ano			char(4)			not null,	
	matricula	char(8)			not null,	
	marca		VARCHAR(40)		not null,
	FK_Tipo_Veiculo char(9)		not null,
	primary key(matricula),
	
	foreign key(FK_Tipo_Veiculo) references Tipo_Veiculo(codigo));

CREATE TABLE Aluguer(
	numero		integer			not null,	
	duracao 	time			not null,
	Aluguer_data date			not null,
	FK_Balcao	integer		    not null,
	FK_Cliente	char(9)			not null,
	FK_Veiculo	char(8)			not null,
	
	unique(duracao),
	unique(Aluguer_data),
	primary key(numero),
	foreign key(FK_Balcao) references Balcao(numero),
	foreign key(FK_Cliente) references Cliente(NIF),
	foreign key(FK_Veiculo) references Veiculo(matricula));


CREATE TABLE Ligeiro(
	portas		integer		not null,	
	combustivel	VARCHAR(30)	not null,	
	numlugares	integer		not null,
	codigo		char(9)		not null,
	primary key(codigo),
	foreign key(codigo) references Tipo_Veiculo(codigo));

CREATE TABLE Pesado(
	nome		VARCHAR(20)	not null,	
	endereco	VARCHAR(60)	not null,	
	num_carta	char(9)		not null,
	codigo		char(9)		not null,
	primary key(codigo),
	foreign key(codigo) references Tipo_Veiculo(codigo));

CREATE TABLE Similaridade(
	codigo1		char(9)		not null,
	codigo2		char(9)		not null,
	primary key(codigo1,codigo2),
	foreign key(codigo1) references Tipo_Veiculo(codigo),
	foreign key(codigo2) references Tipo_Veiculo(codigo));