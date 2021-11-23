# Pacotes e Páginas de Ajuda
---
Muitas das funções mais interessantes do R não estão disponíveis quando iniciamos uma sessão no R, mas sim em pacotes que podem ser instalados pelos usuários. Esses pacotes são semelhantes às bibliotecas do C, C++ e JavaScript ou aos pacotes do Python. Ou seja, são conjuntos de funções úteis, arquivos de ajuda e data sets que podem ser reutilizados nos códigos R uma vez que são carregados dentro de uma sessão. Normalmente o conteúdo desses pacotes do R está relacionado a um tipo de tarefa que o pacote ajuda a resolver.
>Todos os pacotes do R são hospedados no site http://cran.r-project.org, o mesmo que hospeda o R.

### Instalando pacotes
Para utilizarmos um pacote no R é necessário instalá-lo e carregá-lo dentro da sessão. A maneira mais simples de fazer a instalação é através da função ```install.packages```. Para isso, basta abrir a linha de comando do R e executar o comando abaixo:
```R
install.packages("package name")
```
Isto fará uma busca pelo pacote na coleção de pacotes arquivadas no CRAN. Se o pacote for encontrado, ele será baixado para o diretório de pacotes no computador e ficará acessível em sessões futuras sem a necessidade de reinstalação.
>Qualquer um pode criar um pacote do R e publicá-lo da maneira que quiser. No entanto, quase todos os pacotes do R são publicados através do CRAN que, por sua vez, testa cada pacote antes de publicá-lo. Isso não impede a ocorrência de bugs dentro de um determinado pacote, mas significa que podemos confiar em um pacote do CRAN para ser executado dentro do nosso Sistema Operacional.

É possível instalar múltiplos pacotes de um só vez juntando os nomes deles com a função de concatenar do R, por exemplo:
```R
install.packages(c("ggplot2","reshape2","dplyt"))
```
>O pacote ```devtools``` torna fácil a instalação de pacotes de outras fontes que não sejam o CRAN. Ele fornece funções como ```install_github```, ```install_gitorius```, ```install_bitbucket``` e ```install_url```. Elas funcionam de forma semelhante ao comando ```install.packages```, porém buscam os pacotes por outras localizações. A função ```install_github``` é especialmente útil porque muitos desenvolvedores fornecem versões de desenvolvimento de seus pacotes no GitHub. Essas versões podem oferecer novas funcionalidades ainda não oficiais e atualizações, porém podem ser menos estáveis ou livres de bugs que as versões do CRAN.

### Carregando pacotes
Como mencionado anteriormente, a instalação dos pacotes não é o suficiente para tornar suas funções disponíveis dentro da nossa sessão. Na verdade a instalação só deposita essas funções dentro do nosso computador. Para utilizar um pacote do R, precisamos carregá-lo dentro da sessão usando o comando:
```R
libray(package name)
```
>As aspas são opcionais para a função ```library```.

Esse comando fará com que todas as funções, arquivos e data sets do pacote fiquem disponíveis até que a sessão sejá encerrada. Na próxima sessão esse procedimento deverá ser executado novamente para que o pacote fique disponível, mas não há a necessidade de instalá-lo novamente. Para verificar quais pacotes estão instalados no nosso diretório, basta utilizarmos o comando:
```R
library()
```
>O comando ```library()``` também mostra o caminho do atual diretório de bibliotecas do R, que é a pasta que contém os seus pacotes do R.

---
### Exemplo
No código de exemplo desta seção utilizaremos o pacote ```ggplot2``` para plotar um histograma dos resultados da simulação dos dados do exemplo da seção [2_functions](https://github.com/gasouna/R-basics/tree/master/2_functions "Funções"). Porém, desta vez faremos com que os nossos dados estejam 'viciados', alterando a distribuição de probabilidades para que o número 6 tenha maior chance de ser sorteado:
>Observações:
> 1 - Para utilizar as funções do pacote ```ggplot2``` é necessário fazer a instalação no computador e, posteriormente, o carregamento dele na sessão do R. Para a instalação utilizamos o comando ```install.packages("ggplot2")```. Depois, utilizamos o comando ```library(ggplot2)``` para carregá-lo.
> 2 - A função ```qplot``` do pacote instalado é o que precisamos para criar nosso gráfico. No caso de um histograma, basta passarmos um único vetor como argumento.
> 3 - Para gerarmos um histograma fiel a distribuição de probabilidades que definimos precisamos de execuções suficientes. Este trabalho é executado pela função ```replicate```. Ela é uma função que já é padrão do R e nos fornece uma maneira simples de repetir um determinado comando muitas vezes. A sintaxe dessa função é ```replicate(number of executions,command)```.
> 4 - Ao passarmos um vetor para o argumento ```prob``` da função ```sample``` nós alteramos a probabilidade com que cada elemento pode aparecer. Essa probabilidade é distribuída elemento a elemento das nossa amostra, ou seja, o primeiro elemento do vetor de amostra é relacionado ao primeiro elemento do vetor de probabilidades, e assim por diante.
> 5 - A função ```c()``` concatena em um único vetor todos os valores separados por vírgula que são passados como argumento.