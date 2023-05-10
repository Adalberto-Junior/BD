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
... Write here your answer ...
```


### *i)* 

```
... Write here your answer ...
```


## ​Problema 5.2

### *a)*

```
... Write here your answer ...
```

### *b)* 

```
... Write here your answer ...
```


### *c)* 

```
... Write here your answer ...
```


### *d)* 

```
... Write here your answer ...
```


## ​Problema 5.3

### *a)*

```
... Write here your answer ...
```

### *b)* 

```
... Write here your answer ...
```


### *c)* 

```
... Write here your answer ...
```


### *d)* 

```
... Write here your answer ...
```

### *e)* 

```
... Write here your answer ...
```

### *f)* 

```
... Write here your answer ...
```
