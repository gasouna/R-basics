# Índice
* [Tipos de objetos (classes)](#tipos-de-objetos-(classes))
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

