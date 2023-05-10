insert Medico
   values('101','Joao Pires Lima','Cardiologia')
insert Medico
   values('102','Manuel Jose Rosa','Cardiologia')
insert Medico
   values('103','Rui Luis Caraca','Pneumologia')
insert Medico
   values('104','Sofia Sousa Silva','Radiologia')
insert Medico
   values('105','Ana Barbosa','Neurologia')

insert Paciente
   values('1','Renato Manuel Cavaco','1980/01/03','Rua Nova do Pilar 35')
insert Paciente
   values('2','Paula Vasco Silva','1972/10/30','Rua Direita 43')
insert Paciente
   values('3','Ines Couto Souto','1985/05/12','Rua de Cima 144')
insert Paciente
   values('4','Rui Moreira Porto','1970/12/12','Rua Zig Zag 235')
insert Paciente
   values('5','Manuel Zeferico Polaco','1990/06/05','Rua da Baira Rio 1135')

insert Farmacia
   values('Farmacia BelaVista','221234567','Avenida Principal 973')
insert Farmacia
   values('Farmacia Central','234370500','Avenida da Liberdade 33')
insert Farmacia
   values('Farmacia Peixoto','234375111','Largo da Vila 523')
insert Farmacia
   values('Farmacia Vitalis','229876543','Rua Visconde Salgado 263')
   
insert Farmaceutica
   values('905','Roche','Estrada Nacional 249')
insert Farmaceutica
   values('906','Bayer','Rua da Quinta do Pinheiro 5')
insert Farmaceutica
   values('907','Pfizer','Empreendimento Lagoas Park - Edificio 7')		
insert Farmaceutica
   values('908','Merck','Alameda Fernão Lopes 12')

insert Farmaco
   values('905','Boa Saude em 3 Dias','XZT9')		
insert Farmaco
   values('906','Voltaren Spray','PLTZ32')
insert Farmaco
   values('906','Xelopironi 350','FRR-34')
insert Farmaco
   values('906','Gucolan 1000','VFR-750')
insert Farmaco
   values('907','GEROaero Rapid','DDFS-XEN9')		
insert Farmaco
   values('908','Aspirina 1000','BIOZZ02')


insert Prescricao
   values('10001','1','105','Farmacia Central','2015/03/03')
insert Prescricao
   values('10002','1','105',null,null)
insert Prescricao
   values('10003','3','102','Farmacia Central','2015/01/17')
insert Prescricao
   values('10004','3','101','Farmacia BelaVista','2015/02/09')

insert Prescricao
   values('10005','3','102','Farmacia Central','2015/01/17')	
insert Prescricao
   values('10006','4','102','Farmacia Vitalis','2015/02/22')
insert Prescricao
   values('10007','5','103',null,null)		
insert Prescricao
   values('10008','1','103','Farmacia Central','2015/01/02')
 insert Prescricao
   values('10009','3','102','Farmacia Peixoto','2015/02/02')
   

insert presc_farmaco
   values('10001','905','Boa Saude em 3 Dias')
insert presc_farmaco
   values('10002','907','GEROaero Rapid')		
insert presc_farmaco
   values('10003','906','Voltaren Spray')
   insert presc_farmaco
   values('10003','906','Xelopironi 350')		
insert presc_farmaco
   values('10003','908','Aspirina 1000')

insert presc_farmaco
   values('10004','905','Boa Saude em 3 Dias')	
insert presc_farmaco
   values('10004','908','Aspirina 1000')
insert presc_farmaco
   values('10005','906','Voltaren Spray')		
insert presc_farmaco
   values('10006','905','Boa Saude em 3 Dias')
insert presc_farmaco
   values('10006','906','Voltaren Spray')	
insert presc_farmaco
   values('10006','906','Xelopironi 350')
insert presc_farmaco
   values('10006','908','Aspirina 1000')		
insert presc_farmaco
   values('10007','906','Voltaren Spray')
insert presc_farmaco
   values('10008','905','Boa Saude em 3 Dias')		
insert presc_farmaco
   values('10008','908','Aspirina 1000')
insert presc_farmaco
   values('10009','905','Boa Saude em 3 Dias')	
insert presc_farmaco
   values('10009','906','Voltaren Spray')
insert presc_farmaco
   values('10009','908','Aspirina 1000')		
