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