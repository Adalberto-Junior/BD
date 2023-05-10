DROP database ATL
CREATE database ATL
GO

USE ATL

CREATE TABLE Turma(
	N_Max_de_Aluno		char(4)			not null,	
	Ano_Letivo			char(9)			not null,	
	Designação			VARCHAR(40)		not null,
	Identificador		integer			not null, 
	primary key(Identificador)
	);

CREATE TABLE Aluno(
	Nome			    VARCHAR(40)		not null,	
	Morada              VARCHAR(40)		not null,
	Numero_de_CC	    char(9)			not null,
	Data_de_nascimento	date		    not null,	
	FK_Turma			integer			not null,
	primary key(Numero_de_CC),
	foreign key(FK_Turma) references Turma(Identificador)
	);

CREATE TABLE Encarregado_de_Educacao(
	Nome 				VARCHAR(40)			not null,	
	Data_de_nascimento	date				not null,	
	Morada				VARCHAR(40)			not null,
	Telefone			char(9)				not null,
	Numero_de_CC		char(9)				not null,
	Email				VARCHAR(10)					,
	Fk_Aluno			char(9)				not null,
	unique(Telefone),
	primary key(Numero_de_CC),
	foreign key(Fk_Aluno) references Aluno(Numero_de_CC),
	);

CREATE TABLE Pessoa(
	FK_Encarregado_de_Educacao	char(9)			not null,	
	Fk_Aluno					char(9)			not null,
	primary key(FK_Encarregado_de_Educacao,Fk_Aluno),
	foreign key(Fk_Aluno) references Aluno(Numero_de_CC),
	foreign key(FK_Encarregado_de_Educacao) references Encarregado_de_Educacao(Numero_de_CC),
	);

CREATE TABLE Professor(
	Data_de_nascimento		Date			not null,
	Nome 				VARCHAR(40)			not null,
	Morada				VARCHAR(40)			not null,
	Telefone			char(9)				not null,
	Numero_de_CC		char(9)				not null,
	Email				VARCHAR(10)					,
	No_de_Funcionario	integer				not null,
	unique(email,Telefone,Numero_de_cc),
	primary key(No_de_Funcionario),
	);

CREATE TABLE Atividade(
	Custo				money			not null,	
	Designação			VARCHAR(40)		not null,
	Identificador		integer			not null, 
	Fk_Aluno			char(9)			not null,
	primary key(Identificador),
	foreign key(Fk_Aluno) references Aluno(Numero_de_CC)
	);

CREATE TABLE Tem(
	Identificador		integer			not null, 
	No_de_Funcionario	integer			not null,
	primary key(Identificador,No_de_Funcionario),
	foreign key(Identificador)     references Turma(Identificador),
	foreign key(No_de_Funcionario) references Professor(No_de_Funcionario)
	);

CREATE TABLE Disponibilidade(
	Identificador_Tur		integer			not null, 
	Identificador_Act		integer			not null, 				
	primary key(Identificador_Tur,Identificador_Act),
	foreign key(Identificador_Tur) references Turma(Identificador),
	foreign key(Identificador_Act) references Atividade(Identificador)
	);