# Objetos no R
---
A linguagem R permite que salvemos dados dentro de objetos. Estes são basicamente nomes que podem ser usados para 'chamar' dados armazenados dentro da memória do computador. Por exemplo, podemos armazenar dados em um objeto chamado _a_ ou _b_. Sempre que o R encontrar este objeto, irá substituí-lo pelo dado salvo dentro dele.
> Podemos pensar nos objetos como 'caixas de sapato', que podem ter diferentes tamanhos e formatos, além de poder armazenar diferentes tipos de objetos.

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

## Environment panel
Quaisquer objetos que criamos são mantidos no ambiente global. No RStudio podemos visualizar os objetos no _environment panel_, localizado no canto superior direito da tela. Ele nos oferece dois tipos de visualização: _List_ ou _Grid_. 
A visão do tipo _List_ deve ser algo do tipo:
![List view](00_images/EnvironmentPanel_ListView.png "List view")

Enquanto a visão do tipo _Grid_ é do tipo:
![Grid view](00_images/EnvironmentPanel_GridView.png "Grid view")

Podemos usar as duas formas, porém a visão do tipo _Grid_ apresenta mais informações sobre os objetos. Ao clicarmos em um objeto podemos ver as seguintes informações:
1. Nome do objeto
2. Tipo do objeto: Seu modo é mostrado caso o objeto seja um vetor, sua classe é mostrada se o objeto for algo mais complicado do que um vetor.
3. Tamanho do objeto em número de elementos.
4. Tamanho do objeto em termos de volume ocupado.
5. Valor atual armazenado no objeto.

>A coluna _Type_ pode ser confirmada com a função ```mode``` para objetos simples (como vetores) ou com a função ```class``` para objetos mais complexos.

Olhando para as imagens acima podemos ver um objeto chamado ```result```, que armazena o número 5. O R está usando 56 bytes de memória para armazenar este objeto e ele tem o tamanho 1 porque armazena um único número.
Também é possível ver um objeto chamdo ```lowNumbers```, que é um vetor contendo os números 1, 2, 3, 5 e 6. O nome do objeto é ```lowNumbers```, o tipo de informação armazenada nele também é numérica:
```R
mode(lowNumbers)
[1] "numeric"
```
Ele tem um tamanho 5 porque armazena 5 elementos (números). O R está usando 96 bytes de memória para armazenar essa informação. Na coluna _Value_ conseguimos ver a informação ```num[1:5] 1 2 3 5 6``` que indica que o R está armazenando esse objeto como um vetor. Especificamente, a notação ```[1:5]``` indica que o objeto é um vetor contendo 5 elementos. A notação ```num``` precedendo isso indica que os valores armazenados são numéricos.

>Maiores informações sobre os tipos de dados a serem armazenados e os tipos de objetos disponíveis no R estão descritas nos arquivos desta seção.