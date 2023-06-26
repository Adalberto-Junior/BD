/*
Tringers:
-Atualizar o estado da mesa! Done
-Atualizar a quantidade do produto--> done
-Ao fornecer um pedido verificar se o produto em conta está disponivel. Done
-Fazer um Trigger inverso de atualizar o estado da mesa, sendo possivel verificar se a mesa já pode ser desocupada! Não funciona

UDF:
-Função para imprimir a descrição da conta; done
Imprimir produto quantidade
-
Indices:
--Nome do produto done
--Numero da mesa done

SP:
-Fechar a conta done
-O produto
Para tirar o conflito de chaves estrageira no Empregados e restaurante. 
*/

go
--UDF
CREATE FUNCTION dbo.DescricaoConta() RETURNS @Descricao TABLE (Codigo int,NumMesa int, produto varchar(60), valor money)
AS
	BEGIN
		INSERT @Descricao (Codigo, NumMesa, produto, valor)
		SELECT C.CodigoTalao, C.Numero, Pr.Nome, Pr.Preco 
		FROM Conta as c JOIN Pedido as p ON p.Numero = c.Numero inner join Seleciona as s on s.NumPedido = p.Numero inner join Produto as Pr on Pr.Nome = s.NomeP;
			RETURN;
	END;

GO
SELECT * FROM dbo.DescricaoConta();


go
---####Procedure;
create procedure FechoDeConta @NumeroMesa int
as 
	Select P.Numero, PrecoTotal = sum(Pr.Preco * Pr.Iva)  from  Pedido as P inner join Seleciona as S on P.Numero = S.NumPedido inner join Produto as Pr on Pr.Nome = S.NomeP 
		where P.Numero = @NumeroMesa
	group by P.Numero;
go

Create Table #temp(
	NumMesa int,
	PrecoTotal money
)
Insert into #temp
	Execute FechoDeConta @NumeroMesa = 1;

Select t.NumMesa, D.produto, D.valor, t.PrecoTotal from #temp as t inner join dbo.DescricaoConta() as D on t.NumMesa = D.Codigo
group by t.NumMesa, D.produto, D.valor, t.PrecoTotal;



go
--Index
Create index NomeProduto on Produto (Nome,Preco, QuantiDisp);

go 
Select Nome,Preco,QuantiDisp from  Produto;
Select * from Produto

--Select * from Produto;

go
Create index MesaLivre on Mesa (Numero) where Estado = 'Livre'; 

Select Numero, Estado from Mesa;


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
update Mesa set Estado = 'Ocupado', NumCliente = 0 where Numero = 4;
update Mesa set Estado = 'Reservado', NumCliente = 10 where Numero = 6;
update Mesa set Estado = 'Ocupado', NumCliente = 4 where Numero = 7;


Select * from Mesa;

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
		else if(@QuantDisp = 1)
			begin
				INSERT INTO Seleciona SELECT * FROM inserted;
				update Produto set Produto.QuantiDisp = Produto.QuantiDisp - 1 where Produto.Nome = (Select NomeP from inserted);
				print('Produto Tornou-se indisponível, Quantidade = 0;');
			end;
		else
			begin
			
			SELECT * FROM inserted
				INSERT INTO Seleciona SELECT * FROM inserted;
				update Produto set Produto.QuantiDisp = Produto.QuantiDisp - 1 where Produto.Nome = (Select NomeP from inserted);
				print('Sucess!');
			end;
		end;
go
Insert Seleciona values(21,'Salada de Frutas');

go
Select * from Seleciona;
			
				


/*
Create trigger desocuparMesa on dbo.Mesa
	After update
as
begin 
	if(Select count(*) from inserted) > 0
	begin 
	Declare @estado as varchar(30);
*/



/*
CREATE Trigger NewClient on dbo.Mesa 
	After insert, UPDATE
as
Begin
	
	if(Select count(*) from inserted) > 0
		begin
		Declare @estado as varchar(30);
		Declare @NumClient as int;
		Declare @number as int;
		Select @number = Numero from  inserted;
		Select @estado = Estado from Mesa where Numero = @number; 
		if @estado = 'Ocupado'
			RAISERROR ('A Mesa já se encontra ocupada!',16,1);
		else if @estado = 'Reservado'
			RAISERROR ('A mesa Encontra-se Reservada!',16,1);
		else
		begin
			update M
			
			set Estado = (select Estado from inserted), NumCliente = (select NumCliente from inserted) from Mesa as M 
		 inner join inserted as I on I.Numero = M.Numero 
		 left join deleted as D on D.Numero = M.Numero;
		 --where Mesa.Numero = (select Numero from inserted);
			Print 'Update Action was sucess!';
		end
	end
end
*/