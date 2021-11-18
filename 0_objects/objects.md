## Objetos no R
---
A linguagem R permite que salvemos dados dentro de objetos. Estes são basicamente nomes que podem ser usados para 'chamar' dados armazenados dentro da memória do computador. Por exemplo, podemos armazenar dados em um objeto chamado _a_ ou _b_. Sempre que o R encontrar este objeto, irá substituí-lo pelo dado salvo dentro dele.
Para criar um objeto no R precisamos escolher um nome e então utilizar os símbols '<-' para atribuir um valor para ele:
```R
die <- 1:6
[1] 1 2 3 4 5 6
```

> É possível nomear um objeto com qualquer nome que desejarmos, com exceção de algumas regras. Primeiro, o nome de um objeto não pode começar com um número. Segundo, não podemos utilizar caracteres especiais como ^, !, $, @, +, -, / ou *.
> O R também é case-sensitive, ou seja, um objeto _Nome_ será diferente de um objeto _nome_.

Por mais que estejam armazenados em memória, o R sobrescreverá qualquer informação anterior (sem pedir permissão) caso um novo valor seja atribuído a um objeto. Portanto, é uma boa ideia não utilizar nomes que já estão em uso.
> Uma boa forma de evitar utilizar nomes repetidos é utilizando a função ```ls()```. Está função listará o nome de todas as variáveis já definidas dentro do código.
> O RStudio também mantém uma lista de todas as variáveis já definidas no _environment panel_.