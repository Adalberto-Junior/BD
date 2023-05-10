DROP database stocks
CREATE database stocks
GO
USE stocks
CREATE TABLE Produto(
	Codigo		char(9)			not null,
	Nome		VARCHAR(40)		not null,	
	Preco		integer			not null,
	IVA			varchar(9)		not null,
	Unidades	integer			not null,
	unique(Nome),
	unique(Unidades),
	primary key(Codigo));

CREATE TABLE Tipo_de_Fornecedor(	
	Codigo		char(9)			not null,
	Designacao	VARCHAR(60)		not null,
	unique(Designacao),
	primary key(Codigo));

CREATE TABLE Fornecedor(
	NIF			char(9)			not null,
	Nome		VARCHAR(40)		not null,
	Numero_fax	char(9)			not null,
	Endereco	VARCHAR(60)		not null,	
	Condicoes_pagamento	char	not null,
	tipo		char(9)			not null,
	primary key(tipo),
	foreign key(tipo) references Tipo_de_Fornecedor(codigo));

CREATE TABLE Encomenda(
	Numero_encomenda	integer	not null,
	Data_realizada		date	not null,	
	FK_Fornecedor1		char(9)	not null,
	primary key(Numero_encomenda),
	foreign key(FK_Fornecedor1) references Fornecedor(tipo));

CREATE TABLE Item(
	Numero_encomenda	integer	not null,
	Codigo				char(9)	not null,
	Unidades			integer	not null,
	primary key(Numero_encomenda,Codigo),
	foreign key(Numero_encomenda) references Encomenda(Numero_encomenda),
	foreign key(Codigo) references Produto(Codigo));

insert Tipo_de_Fornecedor
   values('101','Carnes')
insert Tipo_de_Fornecedor
   values('102','Laticinios')
insert Tipo_de_Fornecedor
   values('103','Frutas e Legumes')
insert Tipo_de_Fornecedor
   values('104','Mercearia')
insert Tipo_de_Fornecedor
   values('105','Bebidas')
insert Tipo_de_Fornecedor
   values('106','Peixe')
insert Tipo_de_Fornecedor
   values('107','Detergentes')

insert Fornecedor
   values('509111222','LactoSerrano','234872372',null,'60','102')
insert Fornecedor
   values('509121212','FrescoNorte','221234567','Rua do Complexo Grande - Edf 3','90','102')
insert Fornecedor
   values('509294734','PinkDrinks','2123231732','Rua Poente 723','30','105')
insert Fornecedor
   values('509827353','LactoSerrano','234872372',null,'60','102')
insert Fornecedor
   values('509836433','LeviClean','229343284','Rua Sol Poente 6243','30','107')
insert Fornecedor
   values('509987654','MaduTex','234873434','Estrada da Cincunvalacao 213','30','104')
insert Fornecedor
   values('590972623','ConservasMac','234112233','Rua da Recta 233','30','104')


insert Produto
   values('10001','Bife da Pa','8.75','23',125)
insert Produto
   values('10002','Laranja Algarve','1.25','23',1000)
insert Produto
   values('10003','Pera Rocha','1.45','23',2000)		
insert Produto
   values('10004','Secretos de Porco Preto','10.15','23',342)
insert Produto
   values('10005','Vinho Rose Plus','2.99','13',5232)		
insert Produto
   values('10006','Queijo de Cabra da Serra','15','23',3243)
insert Produto
   values('10007','Queijo Fresco do Dia','0.65','23',452)
insert Produto
   values('10008','Cerveja Preta Artesanal','1.65','13',937)
insert Produto
   values('10009','Lixivia de Cor','1.85','23',9382)		
insert Produto
   values('10010','Amaciador Neutro','4.05','23',932432)
insert Produto
   values('10011','Agua Natural','0.55','6',919323)
insert Produto
   values('10012','Pao de Leite','0.15','6',5434)
insert Produto
   values('10013','Arroz Agulha','1','13',7665)
insert Produto
   values('310014','Iogurte Natural','0.4','13',998)

insert Encomenda
   values(1,'2015/03/03','509111222')	
insert Encomenda
   values(2,'2015/03/04','509121212')
insert Encomenda
   values(3,'2015/03/05','509987654')		
insert Encomenda
   values(4,'2015/03/06','509827353')
   insert Encomenda
   values(5,'2015/03/07','509294734')	
insert Encomenda
   values(6,'2015/03/08','509836433')
insert Encomenda
   values(7,'2015/03/09','509121212')		
insert Encomenda
   values(8,'2015/03/10','509987654')
   insert Encomenda
   values(9,'2015/03/11','509836433')		
insert Encomenda
   values(10,'2015/03/12','509987654')


insert Item
   values(1,'10001',200)	
insert Item
   values(1,'10004',300)
insert Item
   values(2,'10002',1200)		
insert Item
   values(2,'10003',3200)
   insert Item
   values(3,'10013',900)	
insert Item
   values(4,'10006',50)
insert Item
   values(4,'10007',40)		
insert Item
   values(4,'10014',200)
   insert Item
   values(5,'10005',500)		
insert Item
   values(5,'10008',10)
insert Item
   values(5,'10011',1000)	
insert Item
   values(6,'10009',200)
insert Item
   values(6,'10010',200)		
insert Item
   values(7,'10003',1200)
   insert Item
   values(8,'10013',350)	
insert Item
   values(9,'10009',100)
insert Item
   values(9,'10010',300)		
insert Item
   values(10,'10012',200)