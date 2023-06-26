
--UDF
go
--Quantidade de cada produto
CREATE FUNCTION dbo.QuantProduto() RETURNS @Quantidade TABLE (produto varchar(60), quantidade int)
AS
	BEGIN
		INSERT @Quantidade (produto,quantidade)
		SELECT Pr.Nome, Pr.QuantiDisp
		FROM Produto as Pr;
			RETURN;
	END;

go
Select * from dbo.QuantProduto();

go
--Descrição de conta
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
--Fecho da conta
create procedure FechoDeConta @NumeroMesa int
as 
	Select P.Numero, PrecoTotal = sum(Pr.Preco * Pr.Iva)  from  Pedido as P inner join Seleciona as S on P.Numero = S.NumPedido inner join Produto as Pr on Pr.Nome = S.NomeP 
		where P.Numero = @NumeroMesa
	group by P.Numero;
go
----### União do  FechoDeConta com dbo.DescricaoConta()!
Create Table #temp(
	NumMesa int,
	PrecoTotal money
)
Insert into #temp
	Execute FechoDeConta @NumeroMesa = 1;

Select t.NumMesa, D.produto, D.valor, t.PrecoTotal from #temp as t inner join dbo.DescricaoConta() as D on t.NumMesa = D.Codigo
group by t.NumMesa, D.produto, D.valor, t.PrecoTotal;



