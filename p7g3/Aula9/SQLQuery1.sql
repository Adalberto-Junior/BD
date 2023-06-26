USE Company
GO
---------------------A-----------------------------
go
create proc sp_delfunction(@ssn char(9))
as 
	begin
	delete from  dbo.dependent where @ssn = Essn
	delete from dbo.works_on where @ssn = Essn
	update dbo.department set Mgr_ssn = null where @ssn = Mgr_ssn 
	update dbo.Employee set Super_ssn = null where @ssn = Super_ssn
	delete from dbo.Employee where @ssn = Ssn
	end;



---------------------B-----------------------------
go 
	create proc sp_record_set(@gestor_ssn char(9) output, @gestor_ano char(9) output)
as  
	begin 
		Select * from Employee as E inner join department as D on  D.Mgr_ssn = E.Ssn;
		Select @gestor_ssn = D.Mgr_ssn, @gestor_ano = DATEDIFF(YEAR, D.Mgr_start_date,GETDATE()) from dbo.department as D
		where D.Mgr_start_date = (Select min(Mgr_start_date) from department);
	end;

Declare @Mgr_ssn char(9);
Declare @work_year char(9);
Exec sp_record_set @Mgr_ssn output, @work_year output;
print @Mgr_ssn;
print @work_year;

---------------------C-----------------------------
go 
create Trigger justOne on dbo.department
/*After*/ INSTEAD OF INSERT , update
as 
	Begin
		if(Select count(*) from inserted) > 0
			begin 
				Declare @ssn as char(9);
				Select @ssn = Mgr_ssn from inserted;

				if @ssn = null or ((select count(*) from Employee where Ssn = @ssn) ) = 0
						RAISERROR ('Funcionario inexistente',16,1)
				else
					  begin 
						  if (Select count(Dnumber) from department where Mgr_ssn = @ssn) >= 1 
								 RAISERROR ('O Funcionario já é gestor',16,1)
						   else
								Insert into department Select * from inserted;
					   end
			end
	end

---------------------E-----------------------------
create function projetFunc (@ssn char(9)) returns @projeto Table(Pname varchar(60), Plocation varchar(60))
as
   begin
	   insert @projeto
			Select Pname,Plocation from project inner join works_on on Pnumber = Pno inner join Employee on Ssn = Essn where Ssn = @ssn;
		return;
   end;

Go
select * from Employee;
SELECT * FROM Works_on;
SELECT * FROM Project;
Select * from projetFunc('12652121');

---------------------F-----------------------------
create function FuncMediSalaSup (@dno char(9)) returns @Funcionario Table(Ssn char(9))

As
	begin 
		insert @Funcionario
		Select Ssn from Employee inner join (select Dno, Avg(salary) as media_Salario from department, Employee
			where Dno = Dnumber group by Dno) as media_Sal_depart
			on media_Sal_depart.Dno = Employee.Dno and Salary > media_Salario and Employee.Dno = @dno;
		return;
	end;

Select * from projetFunc('1');


		




