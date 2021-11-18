# Operações matemáticas
---
Uma vez que conseguimos armazenar dados dentro de objetos, é possível manipular essas informações de maneira a gerar outras a partir delas. Por exemplo, pegaremos o objeto _die_ abaixo:
```R
die <- 1:6
[1] 1 2 3 4 5 6
```

* Adição:
```R
die + 1
[1] 2 3 4 5 6 7
```
* Subtração:
```R
die - 1
[1] 0 1 2 3 4 5
```
* Multiplicação:
```R
die * 2
[1] 2 4 6 8 10 12
```
* Divisão:
```R
die / 2
[1] 0.5 1.0 1.5 2.0 2.5 3.0
```

Por padrão, o R executa as operações em vetores e matrizes elemento a elemento. Quando utilizamos dois ou mais vetores em uma operação, o R irá alinhar os dois vetores e executar uma sequência de operações individuais. Por exemplo, se rodarmos o comando ```die * die```, o R irá alinha os dois vetores e então multiplicar o primeiro elemento do vetor 1 pelo primeiro elemento do vetor 2, e assim por diante até que todos os elementos sejam multiplicados. O resultados será um novo vetor com o mesmo tamanho dos dois primeiros.
Se fornecermos dois vetores de tamanhos diferentes, o R irá repetir o vetor menor até que ele fique do mesmo tamanho do maior e então executar a operação elemento a elemento. Essa alteração não é permanente, ou seja, após a execução da operação o vetor menor retorna ao seu tamanho original.
> Caso o tamanho do vetor maior não seja múltiplo do vetor menor, ou seja, não dê para preencher completamente o vetor menor com repetições dele mesmo, o R retornará uma mensagem de atenção.

Seguem exemplos:
* Vetores do mesmo tamanho:
```R
die * die
[1] 1 4 9 16 25 36
```
* Vetores de tamanhos diferentes e tamanho do maior sendo múltiplo do menor:
```R
die + 1:2
[1] 2 4 4 6 6 8
```
* Vetores de tamanhos diferentes e tamanho do maior não é múltiplo do menor:
```R
die + 1:4
[1] 2 4 6 8 6 8
Warning message:
In die + 1:4 :
    longer object length is not a multiple of shorter object length
```
> No último caso, o vetor menor _(1 2 3 4)_ foi extendido para ter o mesmo tamanho do vetor _die_, ficando da forma _1 2 3 4 1 2_ para a soma elemento a elemento.

É possível fazer com que o R execute as operações matriciais respeitando as regras da Álgebra Linear, desde que isso seja explicitamente solicitado através de comandos. Por exemplo, podemos multiplicar o vetor _die_ usando:
```R
die %o% die
        [,1]  [,2]  [,3]  [,4]  [,5]  [,6]
[1,]    1     2     3     4     5     6
[2,]    2     4     6     8     10    12
[3,]    3     6     9     12    15    18
[4,]    4     8     12    16    20    24
[5,]    5     10    15    20    25    30
[6,]    6     12    18    24    30    36
```
> Também podemos fazer coisas como transpor uma matriz usando o operador ```t``` ou então calcular o determinante usando o operador ```det```.
