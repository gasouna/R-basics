# Vetores
Os vetores são basicamente um conjunto de dados de um mesmo tipo. Podemos criar um vetor agrupando alguns valores usando a função ```c```.
```R
die <- c(1,2,3,4,5,6)
die
[1] 1 2 3 4 5 6

is.vector(die)
[1] TRUE
```
>A função ```is.vector``` testa se o objeto é um vetor. Ela retorna ```TRUE``` se o objeto for um vetor e ```FALSE``` caso contrário.

É possível criar vetores com um único elemento. Na verdade, o R salva valores únicos como um vetor de tamanho 1:
```R
five <- 5
five
[1] 5

is.vector(five)
[1] TRUE

length(five)
[1] 1
```
> A função ```length``` retorna o tamanho de um vetor.

Cada vetor armazena seus valores em um vetor unidimensional que contém um único tipo de dado, que pode variar entre: _doubles_, _integers_, _characters_, _logicals_, _complex_ e _raw_.

### Doubles
Um vetor do tipo _double_ armazena números. Eles podem ser positivos ou negativos, grandes ou pequenos, e ter dígitos decimais ou não. De maneira geral, o R salva qualquer número que digitamos como um _double_. 
```R
die <- c(1,2,3,4,5,6)
die
[1] 1 2 3 4 5 6

typeof(die)
[1] double
```
>A função ```typeof``` indica qual é o tipo de dado de um objeto.

### Integers
Os vetores _integers_ armazenam números inteiros, ou seja, números que podem ser escritos sem componentes decimais. Podemos especificar para o R que queremos armazenar os números como inteiros digitando o número seguido pela letra L em maiúsculo. Por exemplo:
```R
int <- c(-1L,2L,5L)
int
[1] -1 2 5

typeof(int)
integer
```
>O R não salvará um número como inteiro a não ser que seja incluído o L.

A diferença entre os números 5 e 5L é somente como o R os armazena na memória, na qual os inteiros são definidos com maior precisão.

### Characters
Um vetor do tipo _character_ armazena pequenos fragmentos de texto. É possível criar um vetor de caracteres digitando um caractere ou uma _string_ de caracteres entre aspas:
```R
text <- c("Hello","World")
text
[1] "Hello" "World"

typeof(text)
[1] "character"

typeof("Hello")
[1] "character"
```
Os elementos de um vetor de caracteres são chamados de _strings_. Elas podem conter não somente letras, mas combinações de letras, números e símbolos.

### Logicals
Vetores lógicos armazenam valores ```TRUE``` ou ```FALSE```, que são a forma de dados Booleanos do R. Eles são muito úteis, especialmente para fazer comparações.
>Sempre que digitarmos ```TRUE``` ou ```FALSE``` em letras maiúsculas o R irá tratar como dados lógicos. Além disso, o R assume que ```T``` e ```F``` são abreviações para ```TRUE``` ou ```FALSE```
```R
logic <- c("TRUE","FALSE","FALSE")
logic
[1] "TRUE" "FALSE" "FALSE"

typeof(logic)
[1] "logical"

typeof(F)
[1] "logical"
```

### Complex and Raw
Os vetores complexos armazenam números complexos. Para criar um vetor complexo adicionamos uma componente imaginária para um número usando a letra 'i':
```R
comp <- c(1 + 1i, 1 + 2i, 1 + 3i)
comp
[1] 1+1i, 1+2i, 1+3i

typeof(comp)
[1] "complex"
```
Os vetores do tipo _raw_ armazenam bytes de dados. Podemos fazer um vetor do tipo _raw_ vazio usando a função ```raw```:
```R
raw(3)
[1] 00 00 00

typeof(raw(3))
[1] "raw"
```