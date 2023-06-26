

Use Restauracao;
/*
insert Restaurante
   values('Arco da Velha', 'Largo da Praça do Peixe nº9 ')
insert Restaurante
   values('Califórnia Barraco', 'Rua de São Pedro de Alcântara, 39-49')
insert Restaurante
   values('O NoMad Restaurante', 'Rua dos Duques de Bragança, 7, Chiado')
   */
insert Restaurante
   values('Hollywood Café', 'R. João do Outeiro 24',null)

insert Empregado
   values('902523680', 'Mayil Barros','279725680', 'R. Homem Cristo Filho 4, 3810-100 Aveiro','965588592',€8211,'Hollywood Café')
insert Empregado
   values('907757575', 'Uswen Mayil','263005909', 'R. Homem Cristo Filho 67, 3810-100 Aveiro','965299013',€7211,'Hollywood Café')
insert Empregado
   values('908972219', 'Beriel Findtooel','314879170', 'R. Cristo Pet 4, 3810-100 Aveiro','965000097',€7211,'Hollywood Café')
insert Empregado
   values('909261514', 'Nugil Saelro','308598920', 'R. Homem Cristo Filho 47, 3810-100 Aveiro','965703878',€7211,'Hollywood Café')
insert Empregado
   values('910132565', 'Hirtoeriel Celebdi','305675990', 'R. de Ovar, 3810-489 Aveiro','965729590',€7211,'Hollywood Café')
insert Empregado
   values('910907294', 'Caday Dias','364942789', 'orte da Barra, Edifício 9 Ílhavo 3830-565','965383534',€7211,'Hollywood Café')
insert Empregado
   values('911157771', 'Pulu dias','366535013', 'Praça da República Aveiro 3810-156','965451898',€7211,'Hollywood Café')
insert Empregado
   values('911324974', 'Guawyn Routuanor','397111312', 'Cais Da Fonte Nova, Lote 5, 3810-200 Aveiro','965901996',€7211,'Hollywood Café')

update Restaurante set NumGerente = '902523680' where Nome = 'Hollywood Café';


/*
insert Empregado
   values('910132565', 'Hirtoeriel Celebdi','305675990', 'R. de Ovar, 3810-489 Aveiro','965729590',€6211,'O NoMad Restaurante')
insert Empregado
   values('910907294', 'Caday Dias','364942789', 'orte da Barra, Edifício 9 Ílhavo 3830-565','965383534',€6211,'O NoMad Restaurante')
insert Empregado
   values('911157771', 'Pulu dias','366535013', 'Praça da República Aveiro 3810-156','965451898',€6211,'O NoMad Restaurante')
insert Empregado
   values('911324974', 'Guawyn Routuanor','397111312', 'Cais Da Fonte Nova, Lote 5, 3810-200 Aveiro 3810-200','965901996',€6211,'O NoMad Restaurante')

insert Empregado
   values('914130942', 'Andfuiwyn Dolor','337396671', 'Torte da Barra, Edifício 9 Ílhavo 3830-565','965552795',€8211,'Califórnia Barraco')
insert Empregado
   values('914733537', 'Ruesell Melpaien','314896260', 'Praça da República Aveiro 3810-156','965964616',€8211,'Califórnia Barraco')
insert Empregado
   values('921083168', 'Tiagil Boreth','336844450', 'Cais Da Fonte Nova, Lote 5, 3810-200 Aveiro 3810-200','965814357',€8211,'Califórnia Barraco')
insert Empregado
   values('921549033', 'Dolcu Meriel','383848350', 'R. Do Sr. Dos Aflitos 37, 3800-365 Aveiro','965354397',€8211,'Califórnia Barraco')

insert Empregado
   values('922276578', 'Galadhweil Arxau','385732899', 'R. de Ovar, 3810-489 Aveiro','965502612',€6211,'Arco da Velha')
insert Empregado
   values('925192577', 'Tiniundis Nimso','304204439', 'Porte da Barra, Edifício 9 Ílhavo 3830-565','965191735',€6211,'Arco da Velha')
insert Empregado
   values('925916619', 'Irpen Arwen','372636357', 'Praça da República Aveiro 3810-156','965356500',€6211,'Arco da Velha')
insert Empregado
   values('933994715', 'Piril Ririael','395328780', 'Cais Da Fonte Nova, Lote 5, 3810-200 Aveiro 3810-200','965937647',€6211,'Arco da Velha')

*/




insert Mesa
   values(1, 'Ocupado',6,'Hollywood Café')
insert Mesa
   values(4, 'Reservado',10,'Hollywood Café')
insert Mesa
   values(6, 'Livre',0, 'Hollywood Café')
insert Mesa
   values(7, 'Ocupado',2,'Hollywood Café')

insert Mesa
   values(2, 'Livre',0,'Hollywood Café')
insert Mesa
   values(8, 'Ocupado',4,'Hollywood Café')
insert Mesa
   values(9, 'Ocupado',1, 'Hollywood Café')
insert Mesa
   values(10, 'Livre',0,'Hollywood Café')

insert Mesa
   values(3, 'Ocupado',5,'Hollywood Café')
insert Mesa
   values(13, 'Ocupado',4, 'Hollywood Café')
insert Mesa
   values(20, 'Ocupado',2, 'Hollywood Café')
insert Mesa
   values(15, 'Ocupado',8, 'Hollywood Café')

insert Mesa
   values(5, 'Livre',0,'Hollywood Café')
insert Mesa
   values(11, 'Livre',0,'Hollywood Café')
insert Mesa
   values(12, 'Ocupado',12,'Hollywood Café')
insert Mesa
   values(14, 'Ocupado',6,'Hollywood Café')

   


insert Mesa
   values(21, 'Ocupado',2,'Hollywood Café')
/*
insert Mesa
   values(8, 'Ocupado',4,'O NoMad Restaurante')
insert Mesa
   values(9, 'Ocupado',1, 'O NoMad Restaurante')
insert Mesa
   values(10, 'Livre',0,'O NoMad Restaurante')

insert Mesa
   values(3, 'Ocupado',5,'Califórnia Barraco')
insert Mesa
   values(13, 'Ocupado',4, 'Califórnia Barraco')
insert Mesa
   values(20, 'Ocupado',2, 'Califórnia Barraco')
insert Mesa
   values(15, 'Ocupado',8, 'Califórnia Barraco')

insert Mesa
   values(5, 'Livre',0,'Arco da Velha')
insert Mesa
   values(11, 'Livre',0,'Arco da Velha')
insert Mesa
   values(12, 'Ocupado',12,'Arco da Velha')
insert Mesa
   values(14, 'Ocupado',6,'Arco da Velha')
*/
  

insert Pedido
   values(1)
insert Pedido
   values(13)
insert Pedido
   values(3)
insert Pedido
   values(15)
insert Pedido
   values(20)
insert Pedido
   values(12)
insert Pedido
   values(7)
insert Pedido
   values(8)
insert Pedido
   values(9)
insert Pedido
	values(14)

insert Pedido
	values(21)

insert Produto
	  values('Arroz de forno', €10,1.23,'Hollywood Café',100) --100 dose
insert Produto
      values('Costelinha de porco grelhado', €12,1.23,'Hollywood Café',150) --100 dose
insert Produto
      values('Filé de frango com molho de mostarda', €9,1.23,'Hollywood Café',150) --100 dose
insert Produto
      values('Tutu de feijão', €15,1.23,'Hollywood Café',90) --100 dose

insert Produto
      values('Espumante Casa Ermelinda Freitas', €4,1.23,'Hollywood Café',100) --100 garrafas
insert Produto
      values('Vinho Branco Porrais Doc Douro', €3,1.23,'Hollywood Café',100) --100 garrafas
insert Produto
      values('Vinho Tinto Murganheira Doc Távora Varosa 0.75l', €5,1.23,'Hollywood Café',100) --100 garrafas
insert Produto
      values('Vinho Tinto Granja Amareleja Doc Alentejo Vinhas v. 0.75l', €5,1.23,'Hollywood Café',100) --100 garrafas

insert Produto
      values('Pão e Azeitona', €1,1.23,'Hollywood Café',200) --200 dose
insert Produto
      values('Paté caseiro', €1,1.23,'Hollywood Café',200) --200 dose
insert Produto
      values('Queijo Nissa', €1,1.23,'Hollywood Café',300) --300 dose
insert Produto
      values('Queijo no Forno', €1,1.23,'Hollywood Café',300) --300 dose

insert Produto
      values('creme de leite', €4,1.23,'Hollywood Café',100) --100 garrafas
insert Produto
      values('Doce de casa', €3,1.23,'Hollywood Café',100) --100 garrafas
insert Produto
      values('Salada de Frutas', €3,1.23,'Hollywood Café',100) --100 garrafas
insert Produto
      values('Pudim de leite', €3,1.23,'Hollywood Café',100) --100 garrafas

insert Produto
      values('Expresso', €1,1.23,'Hollywood Café',200) --200 dose
insert Produto
      values('Descafeinado', €1,1.23,'Hollywood Café',200) --200 dose
insert Produto
      values('Pingado', €1,1.23,'Hollywood Café',300) --300 dose
insert Produto
      values('Com Cheirinho', €1,1.23,'Hollywood Café',300) --300 dose

insert Seleciona
   values(1,'Paté caseiro')
insert Seleciona
   values(3,'Queijo Nissa')
insert Seleciona
   values(7,'Queijo no Forno')
insert Seleciona
   values(1,'Pão e Azeitona')

insert Seleciona
   values(1,'Espumante Casa Ermelinda Freitas')
insert Seleciona
   values(3,'Espumante Casa Ermelinda Freitas')
insert Seleciona
   values(1,'Vinho Tinto Murganheira Doc Távora Varosa 0.75l')
insert Seleciona
   values(3,'Vinho Tinto Murganheira Doc Távora Varosa 0.75l')

insert Seleciona
   values(1,'Expresso')
insert Seleciona
   values(1,'Pingado')
insert Seleciona
   values(3,'Descafeinado')
insert Seleciona
   values(3,'Expresso')

insert Seleciona
   values(1,'Creme de leite')
insert Seleciona
   values(1,'Doce de casa')
insert Seleciona
   values(3,'Pudim de leite')
insert Seleciona
   values(3,'Creme de leite')

insert Seleciona
   values(1,'Arroz de forno')
insert Seleciona
   values(1,'Costelinha de porco grelhado')
insert Seleciona
   values(3,'Tutu de feijão')
insert Seleciona
   values(3,'Arroz de forno')

insert Entrada
   values('2023/06/22','Paté caseiro')
insert Entrada
   values('2023/06/26','Queijo Nissa')
insert Entrada
   values('2023/06/22','Queijo no Forno')
insert Entrada
   values('2023/06/23','Pão e Azeitona')


insert Bebida
   values( '2023/06/26','Espumante Casa Ermelinda Freitas')
insert Bebida
   values( '2023/06/26','Vinho Tinto Granja Amareleja Doc Alentejo Vinhas v. 0.75l')
insert Bebida
   values('2026/06/26','Vinho Tinto Murganheira Doc Távora Varosa 0.75l')
insert Bebida
   values( '2026/06/26','Vinho Branco Porrais Doc Douro')

insert Cafe
   values( '2023/06/23','Expresso')
insert Cafe
   values( '2026/06/23','Pingado')
insert Cafe
   values( '2026/06/23','Descafeinado')
insert Cafe
   values( '2025/06/23','Com Cheirinho')

insert Sobremesa
   values( '2023/06/23','Caseiro','Creme de leite')
insert Sobremesa
   values('2023/06/23','Caseiro','Doce de casa')
insert Sobremesa
   values('2023/06/23','Caseiro','Pudim de leite')
insert Sobremesa
   values('2023/06/23','Caseiro','Salada de Frutas')

insert PratoNormal
   values('Normal','Arroz de forno')
insert PratoNormal
   values('Carne','Costelinha de porco grelhado')
insert PratoNormal
   values( 'Vegetariano','Tutu de feijão')
insert PratoNormal
   values('Carne','Filé de frango com molho de mostarda')

insert Ingrediente
   values('Arroz Agulha','2023/07/23','Arroz de forno')
insert Ingrediente
   values('Costelinha de Porco','2023/07/23','Costelinha de porco grelhado')
insert Ingrediente
   values('Feijão', '2023/07/23','Tutu de feijão')
insert Ingrediente
    values('Farinha de mandioca', '2023/07/23','Tutu de feijão')
insert Ingrediente
    values('cogumelos e tofu defumado', '2023/07/23','Tutu de feijão')

insert Conta
   values(1, 1,'354979990', '2023/05/23',30,€200,€95,1.23,'R. João do Outeiro 24, 1100-292')
insert Conta
   values(2, 3,'354979898', '2023/05/23',30,€200,€95,1.23,'R. João do Outeiro 24, 1100-292')
