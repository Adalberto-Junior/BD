DROP database Pres_Elet_Medicamentos
CREATE database Pres_Elet_Medicamentos
GO

USE Pres_Elet_Medicamentos

CREATE TABLE Medico(
	numSNS		 char(9)			not null,
	nome			 VARCHAR(40)		not null,	
	especialidade 	 VARCHAR(20)		not null,

	primary key(numSNS)
	);

CREATE TABLE Paciente(
	numUtente	char(9)				not null, 
	nome 				VARCHAR(40)			not null,	
	dataNasc	date				not null,	
	endereco			VARCHAR(40)			not null,
	primary key(numUtente)
	);

CREATE TABLE Farmacia(
	nome 				VARCHAR(40)			not null,	
	telefone			char(9)				not null,
	endereco			VARCHAR(40)			not null,
	unique(Telefone),
	primary key(Nome),
	
	);

CREATE TABLE Prescricao(
	numPresc  			char(9)			not null,
	numUtente 			char(9)			not null,	
	numMedico			char(9)			not null,
	farmacia			VARCHAR(40)			,
	dataProc			Date			,
	primary key(numPresc),
	foreign key(numUtente ) references Paciente(numUtente),
	foreign key(numMedico)	 references Medico(numSNS),
	foreign key(farmacia) references Farmacia(nome)
	);

CREATE TABLE Farmaceutica(
	numReg			char(9)				not null,
	nome 			VARCHAR(40)			not null,	
	endereco		VARCHAR(40)			not null,
	
	primary key(numReg ),
	);

CREATE TABLE Farmaco(
	numRegFarm 			char(9)		not null,
	nome				VARCHAR(40)			not null,
	formula				VARCHAR(40)			not null,
	unique(formula),
	primary key(nome),
	foreign key(numRegFarm) references Farmaceutica(numReg ),
	);

CREATE TABLE presc_farmaco(
	numPresc			char(9)		not null,
	numRegFarm  		char(9)		    not null,
	nomeFarmaco			VARCHAR(40)     not null
					
	primary key(numPresc,nomeFarmaco),
	foreign key(numPresc)     references Prescricao(numPresc),
	--foreign key(numRegFarm )  references Farmaco(numRegFarm),
	foreign key(nomeFarmaco ) references Farmaco(nome)
	);