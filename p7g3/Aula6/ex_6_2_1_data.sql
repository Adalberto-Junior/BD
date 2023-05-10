insert department
   values('1', 'Investigacao', '21312332', '2010/08/02')
insert department
   values('2', 'Comercial', '321233765', '2013/05/16')
insert department
   values('3', 'Logistica', '41124234', '2013/05/16')
insert department
   values('4', 'Recursos Humanos', '12652121', '2014/04/02')
insert department
   values('5', 'Desporto', null, null)

insert Employee
   values('Paula', 'A', 'Sousa','183623612',
		  '2001/08/11','Rua da FRENTE','F','1450',null,'3')
insert Employee
   values('Carlos',	'D', 'Gomes','21312332',
			'2000/01/01',	'Rua XPTO',	'M','1200', null,	'1')
insert Employee
   values('Juliana','A','Amaral','321233765',
		  '1980/08/11','Rua BZZZZ','F','1350',null,'3')
insert Employee
   values('Maria','I','Pereira','342343434',
		'2001/05/01',	'Rua JANOTA','F','1250','21312332','2')
insert Employee
   values('Joao','G','Costa', '41124234',
		  '2001/01/01','Rua YGZ',	'M','1300','21312332','2')
insert Employee
   values('Ana','L','Silva','12652121',
        '1990/03/03',	'Rua ZIG ZAG','F','1400','21312332','2')


insert dependent
   values('21312332', 'Joana Costa', 'F','2008/04/01',
		  'Filho')
insert dependent
   values('21312332',	'Maria Costa','F','1990/10/05','Neto')
insert dependent
   values('21312332','Rui Costa','M','2000/08/04','Neto')
insert dependent
   values('321233765','Filho Lindo','M','2001/02/22','Filho')
insert dependent
   values('342343434','Rosa Lima','F','2006/03/11','Filho')
insert dependent
   values('41124234','Ana Sousa','F','2007/04/13','Neto')		
insert dependent
   values('41124234','Gaspar Pinto','M','2006/02/08','Sobrinho')

insert dept_location
   values('2','Aveiro')		
insert dept_location
   values('3','Coimbra')

insert project
   values('Aveiro Digital','1','Aveiro','3')
insert project
   values('BD Open Day','2','Espinho','2')
insert project
   values('Dicoogle','3','Aveiro','3')		
insert project
   values('GOPACS','4','Aveiro','3')

insert works_on
   values('183623612','1','20')
insert works_on
   values('183623612','3','10')
insert works_on
   values('21312332','1','20')
insert works_on
   values('321233765','1','25')
insert works_on
   values('342343434','1','20')		
insert works_on
   values('342343434','4','25')
insert works_on
   values('41124234','2','20')		
insert works_on
   values('41124234','3','30')