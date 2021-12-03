# Índice
* [Tipos de objetos (classes)](#tipos-de-objetos-(classes) 'Tipos de objetos (Classes)')
  * [Vetores](#vetores 'Vetores')
    * [Indexação](#indexação 'Indexação')
# Tipos de objetos (classes)
Ainda estamos considerando os objetos como 'caixas de sapatos' - uma coisa que pode armazenar coisas. Vimos que podemos armazenar diferentes tipos de elementos dentro das nossas caixas, mas indo mais a fundo as próprias caixas de sapato podem ter tipos diferentes já que temos caixas de sapato grandes, pequenas, de marcas diferentes, etc. O mesmo se aplica aos objetos no R. 
Existem algumas 'classes' de objetos que são mais utilizadas para armazenar diferentes tipos de objetos:
* Vetores
* Matrizes
* Arrays
* Listas
* Dataframes

Vejamos a tabela abaixo como um exemplo:

-|A|B|C
:-:|:-:|:-:|:-:
1|"dog"|0|5
2|"10"|10|23
3|"TRUE"|1|14

Olhando para as colunas A, B e C separadamente e considerando a notação usada pelo R, vemos que cada uma delas tem 3 elementos com o mesmo tipo. A coluna A tem três elementos armazenados como caracteres, enquanto as duas colunas seguintes tem três elementos numéricos cada. Essas três colunas representam **vetores** no R, ou seja, um conjunto unidimensional de elementos de um mesmo tipo (ou modo).

Por um outro lado, as células B1:C3 podem ser consideradas uma **matriz**. As matrizes no R podem armazenar somente elementos de um mesmo tipo (podemos enxergar como um vetor bidimensional). Se fizermos essa matriz ter mais dimensões, teremos um **array**. _Arrays_ podem ter múltiplas dimensões, mas assim como as matrizes só podem armazenar um único tipo de dado.

Podemos combinar todos esses objetos em um **lista**. Uma lista é uma coleção de objetos, somo uma loja de tênis - pode armazenar diferentes caixas de sapatos, inclusive outras lojas de tênis também. Muitas funções retornam os resultados em listas, onde cada parte mantém diferentes tipos de informação.

Por último, as células A1:B3 podem formar um **dataframe**, que é um tipo especial de lista composto por diferentes vetores, todos com o mesmo tamanho.
Cada um dos tipos de objetos tem diferentes propriedades e características que veremos a diante.

## Vetores
Os vetores são o tipo de objeto mais simples da linguagem R. Eles são conjuntos unidimensionais de objetos de um mesmo tipo.
```R
myVector <- c(1,2,3,4,5)
myVector
[1] 1 2 3 4 5
```

>Quando um objeto é um vetor a coluna _Type_ do _Environment panel_ mostra o tipo de dado que ele armazena (seu _modo_).
![Vetores](../00_images/VectorExample.PNG 'Vetores')

A função ```is.vector``` testa se o objeto é um vetor. Ela retorna ```TRUE``` se o objeto for um vetor e ```FALSE``` caso contrário.
```R
is.vector(myVector)
[1] TRUE
```
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

### Indexação
Vamos criar um vetor de exemplo usando a função ```c```:
```R
box <- c("coin","keys","wallet","phone","AirPods","Alexa")
```
O vetor ```box``` armazena seis elementos do tipo caractere, representando objetos diferentes. Podemos recuperar informações específicas dessa 'caixa' usando o método de indexação do R para vetores, que são as chaves ( [ ] ). Por exemplo:
1. Para pegar o primeiro elemento do vetor usamos: ```box[1]```
2. Para pegar o terceiro elemento do vetor usamos: ```box[3]```
3. Para pegar os três primeiros elementos do vetor usamos: ```box[1:3]```
4. Para pegar os elementos 2, 4 e 6 do vetor usamos: ```box[c(2,4,6)]```
5. Para pegar todos os elementos, menos os elementos 1, 3 e 5 usamos: ```box[-c(1,3,5)]```
6. Para pegar todos os elementos, menos o elemento 5 usamos: ```box[-5]```
7. Para pegar os últimos 2 elementos, usamos: ```box[-(1:4)]```

Um índice é uma posição dentro de um vetor. Se um vetor tem 10 elementos, os índices irão de 1 até 10.
>Quando usamos a função ```c``` dentro dos índices podemos escolher qualquer combinação dos elementos e, inclusive, a ordem em que eles aparecerão.

Além da posição dos elementos dentro do vetor podemos usar **nomes**. Dessa forma, podemos extrair uma determinada informação do vetor baseando-se no nome dado para ela. Por exemplo, vamos criar um vetor denominado ```shoebox```, onde colocaremos um tênis da marca "Adidas", tamanho "40" e modelo "Superstar":
```R
shoebox <- c(brand = 'Adidas', size = '40', model = 'Superstar')

shoebox
     brand       size       model  
  "Adidas"       "40" "Superstar"
```
Podemos recuperar os nomes dos objetos usando a função ```names```:
```R
names(shoebox)
[1] "brand" "size" "model"
```
Agora o nosso objeto ```shoebox``` tem um **atributo** associado a ele.
>Nomes são apenas um de muitos atributos que um objeto pode ter. Mais informações sobre os atributos estão descritas na seção 03_attributes.

Quando os objetos são nomeados, podemos extrair informações usando os nomes ao invés das posições:
```R
# Extract the brand
shoebox['brand']
     brand
  "Adidas"

# Extract the size and model
shoebox[c('size','model')]
  size       model
  "40" "Superstar" 

# Change the size to 42
shoebox['size'] <- 42
  size
  "42"
```