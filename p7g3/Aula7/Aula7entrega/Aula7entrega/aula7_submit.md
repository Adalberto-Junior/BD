# BD: Guião 7


## ​7.2 
 
### *a)*

```
Está na 1FN porque todos os atributos são atómicos e não há relações dentro de relações.
Não está na 2FN porque a chave candidata não depende totalmente da chave primária(dependencia parcial):
Por exemplo, a Afiliacao_Autor só depende do Nome_Autor. 

```

### *b)* 

``` 
2FN:

R1(_T.Livro_,_N.Autor_,Tipo.Livro,Preço,No.Páginas,Editor,End.Editor,Ano.Publicação)

R2(_N.Autor_,Af.Autor)

3FN:

R1(_T.Livro_,_N.Autor_,Tipo.Livro,No.Páginas,Editor,Ano.Publicação)

R2(_N.Autor_,Af.Autor)

R3(_Tipo.Livro_,_No.Páginas_,Preço)

R4(_Editor_,End.Editor)


```


## ​7.3
 
### *a)*

```
A chave de R é {A,B}
```


### *b)* 

```
R = {A,B,C,D,E,F,G,H,I,J}

R1={_A_,_B_,C}
R2={_A_,D,E,I,J}
R3={_B_,F,G,H}
```


### *c)* 

```
R = {A,B,C,D,E,F,G,H,I,J}

R1={_A_,_B_,C}
R2={_A_,D,E}
R3={_D_,I,J}
R4={_B_,F}
R5={_F_,G,H}
```


## ​7.4
 
### *a)*

```
A chave de R é {A,B}
```


### *b)* 

```
Já está na 3FN, pois a sua chave já define todos os atributos.
```


### *c)* 

```
R={A,B,C,D,E}

R1={_B_,C,D}
R2={_D_,E}
R3={_C_,A}
```



## ​7.5
 
### *a)*

```
A chave de R é {A,B}
```

### *b)* 

```
   Já está na 2FN,não existem dependências parciais e está na 1FN.
```


### *c)* 

```
    Já está na 3FN, pois a sua chave já define todos os atributos.
```

### *d)* 

```
R = {A,B,C,D,E}
R1={_A_,_B_,C,E}
R2={_C_,D}
```
