DROP database conferencia
CREATE database conferencia
GO
USE conferencia
CREATE TABLE Instituicao(
	Nome_I		VARCHAR(40)		not null,	
	Email_I		VARCHAR(40)		not null,
	unique(Email_I),
	primary key(Nome_I));

CREATE TABLE Pessoa(
	Nome_P		VARCHAR(40)		not null,	
	Email_P		VARCHAR(40)		not null,
	FK_Instituicao VARCHAR(40)	not null,
	unique(Email_P),
	primary key(Nome_P),
	Foreign key(FK_Instituicao) references Instituicao(Nome_I));

CREATE TABLE Autores(
	Nome_P		VARCHAR(40)		not null,	
	primary key(Nome_P),
	Foreign key(Nome_P) references Pessoa(Nome_P));

CREATE TABLE Participantes(
	Morada		VARCHAR(60)		not null,
	Data_de_inscricao	Date	not null,
	Nome_P		VARCHAR(40)		not null,	
	primary key(Nome_P),
	Foreign key(Nome_P) references Pessoa(Nome_P));

CREATE TABLE Artigo(
	Titulo		VARCHAR(40)		not null,	
	N_Registo	char(9)			not null,--//FK_Autores junto com N_Registo e a chave primaria
	FK_Autores	VARCHAR(40)		not null,--//Nao sera foreign key ligada a Autores devido ao relacionamento (Escreve N:M)
	primary key(N_Registo,FK_Autores));

CREATE TABLE Escreve(
	Nome_P_Autores	VARCHAR(40)	not null,	--/Nome_P_Autores faz referencia a chave primaria de autores
	N_Registo	char(9)			not null,	--/Como a chave primmaria de artigo e a juncao da chave primaria de Autores
	PK_Autores	VARCHAR(40)		not null,	--/com a chave parcial de artigo, foi criada a PK_Autores para juntar com N_registo
	primary key(N_Registo,PK_Autores,Nome_P_Autores),
	Foreign key(N_Registo,PK_Autores) references Artigo(N_Registo,FK_Autores),
	Foreign key(Nome_P_Autores) references Autores(Nome_P));

CREATE TABLE Estudante(
	Nome_P		VARCHAR(40)		not null,
	primary key(Nome_P),
	Foreign key(Nome_P) references Participantes(Nome_P));

CREATE TABLE Nao_Estudante(
	Nome_P		VARCHAR(40)		not null,
	Ref_Transicao	char(9)		not null,
	primary key(Nome_P),
	Foreign key(Nome_P) references Participantes(Nome_P));

CREATE TABLE Estudante_Comprovativo(
	Nome_P		VARCHAR(40)		not null,
	Localizacao_Eletronica	VARCHAR(40)	not null,
	primary key(Nome_P,Localizacao_Eletronica),
	Foreign key(Nome_P) references Estudante(Nome_P));