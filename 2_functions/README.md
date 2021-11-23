# Funções
---
A linguagem R possui diversas funções prontas que podem ser utilizadas para executar determinadas ações. Para utilizá-las basta escrever o nome da função e então passar os parâmetros sobre os quais deseja operar dentro de parênteses. Esses parâmetros são chamado de _argumentos_, e podem ser dados, objetos do R ou até resultados de outras funções do R. No último caso, o R irá executar sempre indo da função interna para a de fora.
Exemplo: 
```R
mean(1:6)
[1] 3.5

die <- 1:6
[1] 1 2 3 4 5 6

mean(die)
[1] 3.5

round(mean(die))
[1] 4
```

Muitas funções possuem múltiplos argumentos que podem ajudá-las a executar seu trabalho. É possível passar quantos parâmetros quisermos para a função separando-os com vírgulas.
 Todo argumento em toda função do R tem um nome. É possível especificar qual valor será relacionado com cada argumento usando a sintaxe ```argument = value```. Isso se torna importante a medida que começamos a usar múltiplos argumentos para uma mesma função.
> Quando não sabemos quais são os nomes dos argumentos de uma determinada função podemos utilizar a função ```args```. Usando a sintaxe ```args(function_name)```, teremos como retorno todos os argumentos que são aceitos para uma determinada função, junto com os seus valores padrão.
> Ao não passarmos explicitamente os nomes dos argumentos associados a determinados valores dentro da função o R irá associá-los pela ordem em que estão posicionados dentro dos parênteses.

### Criando nossas próprias funções
Toda função no R tem três partes básicas: um nome, um corpo e um conjunto de argumentos. Para criar nossa própria função precisamos replicar estas três partes e armazená-las em um objeto do R, o que é possível usando a função ```function```. A sintaxe para isso está descrita logo abaixo:
```R
function_name <- function(function_arguments) {function_body}
```
Uma vez definida a função podemos chamar e executar o bloco de códigos contido no corpo dela quantas vezes quisermos dentro da nossa área de trabalho do R.
>A chamada de uma função se dá (minimamente) pela sintaxe ```function_name()```. Podemos pensar nos parênteses como 'gatilhos' para a execução da função. Quando executamos sem eles o R nos mostrará o código contido no corpo da função.

É importante ressaltar que caso a última linha de código do corpo da função não retorne nenhum valor, a função também não retornará nada.
Outro ponto em que é necessário ter atenção é na definição dos argumentos da nossa função. Podemos criar quantos nomes forem necessários separando-os por vírgula e inclusive atribuir valores padrão para eles dentro da definição da função.
>O RStudio tem uma ferramenta que ajuda a construir funções. Para usá-la, basta selecionarmos o trecho de código no script R que queremos transformar em função. Após isso basta clicarmos em ```Code > Extract Function``` na barra de menu. Na sequência o RStudio irá pedir por um nome para a função e então encapsular o código dentro de uma chamada de função. Além disso ele irá escanear o código a procura de variáveis indefinidas e transformá-las em argumentos.

### Páginas de ajuda
Cada função do R vem com uma página de ajuda, que pode ser acessada digitando o nome da função depois de um ponto de interrogação. Por exemplo:
```R
?sample
```
>Caso não lembremos o nome de uma função que desejamos procurar a página de ajuda podemos procurar por palavras-chave. Para fazer isso nós precisamos digitar dois pontos de interrogação seguidos pela palavra-chave. O R responderá com uma lista de links de páginas de ajuda relacionadas.

As páginas de exemplo contêm informações úteis sobre o que cada função faz, além de exemplos de como utilizá-la no seu código. Normalmente encontramos os seguintes tópicos:
* Descrição: Um resumo do que a função faz.
* Uso: Um exemplo de como iríamos utilizar a função. Cada argumento aparece na ordem que o R espera que seja fornecido.
* Argumentos: Uma lista de cada argumento da função, que tipo de informação o R espera para o argumento e o que a função fará com aquela informação.
* Detalhes: Uma descrição mais aprofundada sobre a função e sobre como ela opera.
* Value: Uma descrição sobre o que a função retorna quando é executada.
* Veja também (__See also__): Uma lista de funções relacionadas.
* Exemplos: Código de exemplo que usa a função e é garantido que funciona. Essa parte da página de ajuda geralmente mostra algumas maneiras diferentes de utilizá-la. Isso ajuda a dar uma ideia do que a função é capaz de fazer.

>Se uma função vier dentro de um pacote do R ele não será capaz de encontrar a página de ajuda dele, a menos que o pacote esteja carregado.

---
### Exemplo
No código de exemplo dessa seção criamos uma função chamada ```roll2```, que retorna o valor da soma de uma simulação do lançamento de dois dados numerados de 1 a 6 (por padrão).
>Observações:
> 1 - Dentro da nossa função utilizamos função ```sample```. Ela já está disponível por padrão na linguagem R e tem a funcionalidade de tirar amostras de um determinado conjunto de dados que passamos para ela. Podemos também derterminar a quantidade de itens a serem escolhidos e a distribuição de probabilidades para cada elemento do conjunto através dos argumentos ```size``` e ```prob```, respectivamente. Além disso, podemos utilizar o argumento ```replace``` para permitir a ocorrência de repetições na escolha de itens dentro do conjunto (por padrão a função funciona como se retirasse do conjunto um item já escolhido e depois executasse uma nova amostragem).
> 2 - Também utilizamos a função ```sum``` para retornar a soma dos valores contidos no vetor de resultados da função ```sample```.
> 3 - Utilizamos um valor padrão para a numeração dos dados (de 1 a 6). Sendo assim, a função poderia ser executada utilizando somente o comando ```roll2()```. No entanto, podemos alterar estes valores passando outros vetores como argumento, como por exemplo: ```roll2(die=1:15)```.