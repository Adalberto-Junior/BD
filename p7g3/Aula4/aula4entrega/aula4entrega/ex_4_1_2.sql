DROP database Reservas_de_Voos 
CREATE database Reservas_de_Voos
GO

USE Reservas_de_Voos

CREATE TABLE Airport(
	AirportName		VARCHAR(40)		not null,	
	AirportState	VARCHAR(20)		not null,	
	City			VARCHAR(20)		not null,
	Airport_code	char(9)			not null, 
	primary key(Airport_code)
	);

CREATE TABLE Airport_Type(
	Company			    VARCHAR(40)		not null,	
	TypeName            VARCHAR(40)		not null,
	Max_seats			char(9)			not null,
	unique(company),
	primary key(TypeName),
	
	);

CREATE TABLE Can_Land(
	Airport_code	 char(9)			not null, 
	TypeName         VARCHAR(40)		not null,
	
	primary key(Airport_code,TypeName ),
	foreign key(Airport_code) references Airport(Airport_code),
	foreign key(TypeName ) references Airport_Type(TypeName ),
	);

CREATE TABLE Airplane(
	FTotal_no_seats		char(9)			not null,	
	Airplane_id			integer			not null,
	FK_Airport_Type		VARCHAR(40)		not null,

	primary key(Airplane_id),
	foreign key(FK_Airport_Type) references Airport_Type(TypeName)
	);

CREATE TABLE Flight(
	Airline				VARCHAR(40)			not null,
	Weekdays			VARCHAR(10)			not null,
	Number				char(9)				not null,
	primary key(Number)
	);

CREATE TABLE Fare(
	Amount 				money			not null,	
	Restrictions		VARCHAR(40)		not null,
	Code				char(6)			not null, 
	Number				char(9)			not null,
	primary key(Code),
	foreign key(Number) references Flight(Number)
	);

CREATE TABLE Flight_Leg(
	Leg_no				char(9)			not null,
	Number				char(9)			not null,
	Scheduled_dep_time  time			not null,
	Scheduled_arr_time  time			not null,
	FK_Airport	char(9)			not null, 
	primary key(Leg_no),
	foreign key(FK_Airport)     references Airport(Airport_code),
	foreign key(Number) references Flight(Number)
	);

CREATE TABLE Leg_Instance(
	No_of_avail_seats		char(9)			not null, 
	Leg_InstanceDate		Date			not null,
	Leg_no					char(9)			not null,
	Number					char(9)			not null,
	dep_time				time			not null,
	arr_time				time			not null,
	FK_Airplane				integer			not null,
	primary key(No_of_avail_seats),
	foreign key(Number) references Flight(Number),
	foreign key(Leg_no) references Flight_Leg(Leg_no),
	foreign key(FK_Airplane	) references Airplane(Airplane_id)
	);

CREATE TABLE Seat(
	Seat			char(9)			not null,
	Customer_name	VARCHAR(40)		not null, 
	SeatDate		Date			not null,
	Leg_no			char(9)			not null,
	Number			char(9)			not null,
	Cphone			char(9)			not null,
	primary key(Seat),
	foreign key(Number) references Flight(Number),
	foreign key(Leg_no) references Flight_Leg(Leg_no),
	foreign key(Seat) references Leg_Instance(No_of_avail_seats)
	);