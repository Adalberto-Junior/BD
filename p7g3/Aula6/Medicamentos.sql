SELECT p.numUtente, nome, dataNasc, endereco from Paciente as p left outer join Prescricao 
as pr on p.numUtente = pr.numUtente where pr.numUtente is null 

SELECT especialidade,PrescPorEspeci = count(especialidade) from Medico as 
m inner join Prescricao as pr on m.numSNS = pr.numMedico group by m.especialidade

SELECT farmacia, PrescPorFarm = count(numPresc) FROM Prescricao as pr where 
pr.farmacia != 'null' group by farmacia