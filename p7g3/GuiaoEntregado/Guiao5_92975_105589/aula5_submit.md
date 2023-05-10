# BD: Guião 5


## ​Problema 5.1
 
### *a)*

```
(π Pname, Pnumber (project) ⨝ Pno=Pnumber (works_on)) ⨝ (π Fname,Lname, Ssn (employee) ⨝ Essn=Ssn (works_on))
```


### *b)* 

```
πFname,Minit,Lname ((π Fname,Minit,Lname,Super_ssn (employee)) ⨝ Super_ssn = Ssn (π Ssn ( σ Fname='Carlos'∧ Minit='D'∧ Lname='Gomes' (employee))))
```


### *c)* 

```
πPname,thoras (σ Pnumber=Pno (project ⨝ (γ Pno; sum(Hours)->thoras (works_on))))
```


### *d)* 

```
πFname,Minit,Lname (σ Essn=Ssn∧Pno=1∧Hours>20 ((σ Dno=3 (employee))⨝works_on))
```


### *e)* 

```
πFname,Minit,Lname (σ Essn=null (employee ⟕ Ssn=Essn works_on))
```


### *f)* 

```
πDname,Avg_salary (σ Dnumber=Dno (department⨝(γDno; avg(Salary)->Avg_salary (σ Sex='F' (employee)))))
```


### *g)* 

```
π Fname, Minit, Lname, Ssn (σ Tdependent > 2 (σ Ssn = Essn (employee ⨝ ( γ Essn; count(Essn) -> Tdependent (dependent)))))
```


### *h)* 

```
πFname,Minit,Lname,Ssn (σ Essn=null (dependent ⟖ Essn = Ssn (employee ⨝ Ssn = Mgr_ssn  department)))
```


### *i)* 

```
πFname,Minit,Lname,Address (((π Pname, Pnumber (project) ⨝ Pno=Pnumber (works_on)) ⨝ (π Fname,Lname, Ssn (employee) ⨝ Essn=Ssn (works_on)) ⨝ (σ Plocation = 'Aveiro' (project))) ⨝ (σ Dno=Dnumber (employee ⨝ (σ Dlocation ≠ 'Aveiro' (dept_location)))))
```


## ​Problema 5.2

### *a)*

```
σ fornecedor = null (fornecedor ⟕ nif=fornecedor encomenda)
```

### *b)* 

```
π codigo,nome,preco,iva, unidades, Munidades (σ codigo = codProd (produto ⨝ (γ codProd; avg(unidades)->Munidades (item))))
```


### *c)* 

```
γ avg(NProdutos) -> NumMedioProdutos (γ numEnc; count(numEnc)->NProdutos (item))
```


### *d)* 

```
γ fornecedor.nome, produto.nome; sum(NunidadesEncomenda) -> NunidadesFornecedor (γ fornecedor.nome, produto.nome, encomenda.numero; sum(item.unidades)-> NunidadesEncomenda ((produto ⨝ codigo = codProd item) ⨝ numEnc=numero (encomenda ⨝ fornecedor=nif fornecedor)))
```


## ​Problema 5.3

### *a)*

```
π paciente.numUtente,nome,dataNasc,endereco (σ prescricao.numUtente = null (paciente ⟕ paciente.numUtente = prescricao.numUtente prescricao))
```

### *b)* 

```
γ especialidade ; count(especialidade) -> PrescPorEspeci (medico ⨝ numSNS=numMedico prescricao)
```


### *c)* 

```
γ farmacia; count(numPresc) -> PrescPorFarm (σ farmacia ≠ null (prescricao))
```


### *d)* 

```
π farmaco.numRegFarm,farmaco.nome,formula (σ presc_farmaco.numRegFarm = null (presc_farmaco ⟖  presc_farmaco.numRegFarm = farmaco.numRegFarm ∧ nomeFarmaco = farmaco.nome (farmaco ⨝ numRegFarm = numReg (σ numReg=906 (farmaceutica)))))
```

### *e)* 

```
γ farmacia, farmaceutica.nome ; count(nomeFarmaco) -> NFarmacos (σ farmacia ≠ null (prescricao ⨝ prescricao.numPresc= presc_farmaco.numPresc (presc_farmaco ⨝ nomeFarmaco = farmaco.nome (farmaco ⨝ numRegFarm = numReg (farmaceutica)))))
```

### *f)* 

```
π numUtente,nome,dataNasc,endereco (paciente ⨝ (σ NMedicosUtente > 1 (γ numUtente; count(numMedico) -> NMedicosUtente  (prescricao))))
```
