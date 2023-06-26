go
---TRIGGER:
CREATE Trigger NewClient on dbo.Mesa 
	After UPDATE
as
Begin
	
	if(Select count(*) from inserted) > 0
		begin
		Declare @estado as varchar(30);
		Select @estado = Estado from  deleted;
		if (@estado = 'Ocupado')
		begin
			RAISERROR ('A Mesa já se encontra ocupada!',16,1);
			rollback TRAN;
		end;
		else
			 if (@estado = 'Reservado')
				begin
					RAISERROR ('A mesa Encontra-se Reservada!',16,1);
					rollback TRAN;
				end;
			else
				begin
					update  Mesa set Mesa.Estado = (select Mesa.Estado from deleted), Mesa.NumCliente = (select Mesa.NumCliente from deleted)
						where Mesa.Numero = (select Numero from deleted);

					Print 'Update Action was sucess!';
				end;
	end;
end;
		
go
update Mesa set Estado = 'Ocupado', NumCliente = 3 where Numero = 2;
update Mesa set Estado = 'Reservado', NumCliente = 10 where Numero = 6;
update Mesa set Estado = 'Ocupado', NumCliente = 4 where Numero = 7;

go
Select * from Mesa;

--NÃO FUNCIONA;
/*
go
CREATE Trigger MesaLivre on dbo.Mesa 
	INSTEAD OF  UPDATE
as
Begin
	
	if(Select count(*) from inserted) > 0
		begin

			Declare @NumConta as int;
			Declare @estado as varchar(30);
			Select @estado = Estado from  deleted;
			if(Select count(*) from Conta) > 0
			begin
				Select @NumConta = Numero from Conta where Numero = (select Numero from deleted);
				if (@NumConta = null and @estado = 'Ocupado')
					begin
						RAISERROR ('Erro: Mesa ainda contem cliente!',16,1);
						rollback TRAN;
					end;
				else
					if(@NumConta != Null and @estado = 'Reservado')
						begin
							RAISERROR ('Erro: O estado da mesa não pode ser alterada, a mesmo se encontra reservada!',16,1);
							rollback TRAN;
						end;
					else

						begin
							update  Mesa set Mesa.Estado = (select Mesa.Estado from deleted), Mesa.NumCliente = (select Mesa.NumCliente from deleted)
								where Mesa.Numero = (select Numero from deleted);

							Print 'Sucess! A Mesa está Livre!';
						end;
				end;
		end;
end;

go

update Mesa set Estado = 'Livre', NumCliente = 0 where Numero = 1;
update Mesa set Estado = 'Livre', NumCliente = 0 where Numero = 3;-->ERRO
update Mesa set Estado = 'Livre', NumCliente = 0 where Numero = 6;-->Erro

*/

go
--Ao fornecer um pedido verificar se o produto em conta está disponivel.


create trigger giveProduto on dbo.Seleciona
	After insert, update
	as 
	begin 
		--Declare @pedido as int;
		Declare @QuantDisp as int;
		Select @QuantDisp = QuantiDisp from Produto where Nome = (select NomeP from inserted);
		
		if(@QuantDisp < 1)
			begin
				RAISERROR ('Produto Indisponivel!',16,1);
				rollback TRAN;
			end;
		else
			if(@QuantDisp = 1)
				begin
					--INSERT INTO Seleciona SELECT * FROM inserted;
					update Produto set Produto.QuantiDisp = Produto.QuantiDisp - 1 where Produto.Nome = (Select NomeP from inserted);
					print('Produto Tornou-se indisponível, Quantidade = 0;');
				end;
			else 
				begin
			
				SELECT * FROM inserted
					--INSERT INTO Seleciona SELECT * FROM inserted;
					update Produto set Produto.QuantiDisp = Produto.QuantiDisp - 1 where Produto.Nome = (Select NomeP from inserted);
					print('Sucess!');
				end;
		end;
go
Insert Seleciona values(21,'Salada de Frutas');
--delete Seleciona where NumPedido = 21;
go
Select * from Seleciona;
Select * from Produto;