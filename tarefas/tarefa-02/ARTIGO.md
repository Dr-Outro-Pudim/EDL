# Artigo Perl

Grupo:

* Felipe Oliveira @felipeog
* Renan Mendonça @Dr-Pudim

---

## Introdução

### Perl 5 :dromedary_camel:

* Practical Extraction and Reporting Language
* Linguagem de Extração e Relatório Prático

Criado inicialmente para processar textos e gerar relatórios, é útil para aplicações que necessitam de facilidade de manipulação de strings.

Conhecido como o canivete suíço da Internet e a fita adesiva que a mantém inteira, um pequeno código Perl é capaz de realizar muitas ações.

---

## Índice

1. [Origens e Influências](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#origens-e-influências)
2. [Classificação](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#classificação)
3. [Características](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#características)
4. [Avaliação Comparativa: Perl vs C](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#avaliação-comparativa-perl-vs-c)
5. [Conclusão](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#conclusão)
6. [Bibliografia](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#bibliografia)

---

## Origens e Influências

Foi desenvolvida por Larry Wall e lançada em 1987.

A ideia do Larry era desenvolver uma linguagem que combinasse as expressões regulares do 'sed', a identificação de padrões do AWK, a profundidade do C e a sintaxe baseada tanto em C quanto em Shell Script, tudo isso para facilitar o processamento de texto em sistemas baseados em Unix.

Em 1992 se encontrava na versão 4, quando se tornou uma linguagem padrão para Unix. Também nessa época ficou evidente que não era possível criar grandes programas com Perl.

Em 1994 foi lançada a versão 5, tornando-se uma linguagem completa.

[Voltar ao topo](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#artigo-perl)

---

## Classificação

* Alto nível
* Interpretada
* Multiparadigma
  * Funcional
  * Genérica
  * Imperativa
  * Orientada a evento
  * Orientada a objeto
  * Procedural
  * Reflexiva
* Multiplataforma
* Propósito geral
* Software livre
* Tipagem dinâmica

### Alguns usos:

* Administração de sistemas
* Bioinformática
* Computação gráfica
* Desenvolvimento de sites
* Finança
* Programação de redes

[Voltar ao topo](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#artigo-perl)

---

## Características

### Strings

Para comparar strings, usamos operadores especiais:

* ne - diferente
* eq - igual
* lt - menor que
* ge - maior ou igual 
* le - menor ou igual

### Expressões regulares

Uma expressão regular é capaz de identificar uma cadeia de caracteres de interesse e aplicar alguma operação sobre ela.

A sintaxe das expressões regulares no Perl se assemelha à das linguagens 'sed', grep e AWK.

Para aplicar a expressão regular usamos =~.

Existem três operadores de expressão regular no Perl:

* m// - correspondência
* s/// - substituição
* tr/// - transliteração

#### Correspondência

Verifica se o padrão existe dentro da string especificada. Caso exista, retorna 1. Caso contrário, retorna 0.

O caracter m pode ser omitido quando o delimitador usado é a barra. Caso contrário, ele é necessário.

```perl
#!/usr/bin/perl
use strict;
use warnings;

$str = "Paralisação na UERJ.";

if($str =~ /paralisação/i) {
  print "Tem paralisação.\n";
} else {
  print "Não tem paralisação.\n";
}
```

A saída será:

```
Tem paralisação.
```

#### Substituição

Verifica se o padrão existe dentro da string especificada. Caso exista, o conteúdo é substituído. Caso contrário, não.

```perl
#!/usr/bin/perl
use strict;
use warnings;

$str = "O cachorro deitou no tapete.";
print "$str\n";

$str =~ s/cachorro/gato/;
print "$str\n";
```

A saída será:

```
O cachorro deitou no tapete.
O gato deitou no tapete.
```

#### Transliteração

A transliteração é parecida com a substituição, a diferença é que ela aceita uma lista como parâmetro de busca e outra como parâmetro de transliteração.

```perl
#!/usr/bin/perl
use strict;
use warnings;

$str = "O drone sobrevoou a UERJ.";
print "$str\n";

$str =~ tr/drone, UERJ/Drone, Uerj/;
print "$str\n";
```

A saída será:

```
O drone sobrevoou a UERJ.
O Drone sobrevoou a Uerj.
```

#### Verificação simples de e-mail

O programa a seguir faz uma verificação simples de e-mail válido.

```perl
#!/usr/bin/perl
use strict;
use warnings;

my $pattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}";

print "Digite o e-mail: ";

my $email = <STDIN>;
chomp $email;

if($email =~ /$pattern/) {
  print "Válido.\n";
} else {
  print "Inválido.\n";
}
```

### Contexto de variáveis

> "You will be miserable until you learn the difference between scalar and list context"
> — Programming Perl 3rd ed, page 69

Os dois principais contextos são Escalar e Lista.

O contexto é importante porque operandos podem se comportar de maneiras diferentes de acordo com ele.

#### Contexto Escalar

A atribuição à uma escalar faz com que o conteúdo atribuído seja avaliado em um contexto escalar.

Ou seja, espera-se que um único valor seja atribuído.

#### Contexto de Lista

A atribuição à uma lista faz com que o conteúdo atribuído seja avaliado em um contexto de lista.

Ou seja, espera-se que múltiplos valores sejam atribuídos.

#### Exemplo 1

```perl
#!/usr/bin/perl
use strict;
use warnings;

@nomes = ('Rojas', 'Eustáquio', 'Magela');

@copia = @nomes;
$tamanho = @nomes;

print "Os nomes são: @copia\n";
print "Quantidade de nomes: $tamanho\n";
```
Na linha 7, a lista @nomes está sendo atribuída à uma lista. Logo, este é um contexto de lista. Assim, uma cópia da lista @nomes é atribuída à lista @copia.

Na linha 8, a lista @nomes está sendo atribuída à uma escalar. Logo, este é um contexto escalar. Assim, a quantidade de itens da lista @nomes é atribuída à escalar $tamanho.

A saída será:

```
Os nomes são: Rojas Eustáquio Magela
Quantidade de nomes: 3
```

#### Exemplo 2

```perl
#!/usr/bin/perl
use strict;
use warnings;

my @linguagens = ('Pascal', 'Perl', 'Python');
 
if (@linguagens) {
   say "Existem itens nesta lista.";
} else {
   say "A lista está vazia.";
}
```

O if espera receber uma escalar. Na linha 7 passamos uma lista para ele. Quando passamos uma lista em um contexto escalar, recebemos o tamanho da lista.

Logo, se o tamanho da lista é 0, o if interpreta como FALSE. Se o tamanho é igual ou maior que 1, interpreta como TRUE. 

A saída será:

```
Existem itens nessa lista.
```

### Variável padrão $_

A variável padrão $_ é uma das variáveis especiais mais usadas do Perl. Ela pode conter a entrada padrão, a string de uma expressão regular, assumir o valor do item atual em uma iteração de lista etc.

#### Exemplo 1

```perl
#!/usr/bin/perl
use strict;
use warnings;

foreach('Larry ', 'Wall ', 'Perl ') {
  print $_;
}
```

A saída será:

```
Larry Wall Perl
```

Isso acontece porque a cada iteração, o atual item da lista é colocado na variável padrão $_.

```perl
#!/usr/bin/perl
use strict;
use warnings;

@nomes = ('Huga ', 'Buga ', 'Buguei ');
for(@nomes) {
  print;
}
```

A saída será:

```
Huga Buga Buguei
```

Nesse caso, podemos omitir a variável padrão $_.

#### Exemplo 2

```perl
#!/usr/bin/perl
use strict;
use warnings;

my $arquivo = "texto.txt";
open my $fh, "<", $arquivo
  or die "Erro ao abrir: $_";

close $fh
  or die "Erro ao fechar: $_";
```

Caso haja algum problema na abertura ou fechamento do arquivo, a variável padrão $_ conterá o nome do arquivo Perl e a linha onde onde o erro ocorreu.

```
Erro ao abrir: at arquivoPerl.pl line 6.
```

ou

```
Erro ao fechar: at arquivoPerl.pl line 9.
```

[Voltar ao topo](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#artigo-perl)

---

## Avaliação Comparativa: Perl vs C

### Subrotinas vs Funções

As subrotinas em Perl são muito mais flexíveis do que as funções em C.

Diferente do C, no Perl não é necessário declarar uma subrotina antes de usá-la, pois a disponibilidade da subrotina é avaliada durante a execução. Por esse motivo, caso o nome de alguma subrotina seja escrito errado, apenas quando essa linha de código for executada que o erro será visível.

Subrotinas em Perl também não possuem lista de argumentos formais, como as funções em C, o que faz a verbosidade ser muito pequena.

### Tipagem Dinâmica vs Tipagem Estática

Perl possue tipagem dinâmica, isto é, só se sabe o tipo da variável escalar em tempo de execução. Já o C possue tipagem estática, em que os tipos das variáveis devem ser declarados de antemão, o que faz com que muitos erros sejam descobertos em tempo de compilação, o que é impossível de fazer em Perl.

Logo, é extremamente importante que programas escritos em Perl sejam muito bem testados.

### Exemplo: Concatenação de strings

#### Perl

A concatenação de strings com Perl é bastante simples e não requer verbosidade excessiva.

```perl
#!/usr/bin/perl
use strict;
use warnings;

# Entrada
print "Digite a primeira string: ";
my $str1 = <STDIN>;

print "Digite a segunda string: ";
my $str2 = <STDIN>;

# Remove as quebras de linha no fim das strings
chomp $str1;
chomp $str2;

# Concatena str2 à str1
$str1 = $str1 . $str2;

# Resultado
print "Concatenação: $str1\n";
```

#### C

Já em C, é necessário usar duas repetições for, uma para saber qual é o tamanho da primeira string e outra para fazer a concatenação em si, fazendo com que a verbosidade seja maior em comparação.

A tipagem estática faz com que seus códigos sejam mais fáceis de ler, pois é necessário declarar todas as variáveis juntamente com seus tipos.

```c
#include <stdio.h>
int main() {
  char str1[100], str2[100], i, j;

  // Entrada
  printf("Digite a primeira string: ");
  scanf("%s", str1);

  printf("Digite a segunda string: ");
  scanf("%s", str2);

  // Calcula o tamanho da string str1 e o guarda em i
  for(i = 0; str1[i] != '\0'; ++i);

  // Concatena str2 à str1
  for(j = 0; str2[j] != '\0'; ++j, ++i) {
    str1[i] = str2[j];
  }

  // Adiciona o caracter nulo ao fim da string
  str1[i] = '\0';
  
  // Saída
  printf("Concatenação: %s\n", str1);

  return 0;
}
```

Para escrever o mesmo programa em C, uma reestruturação significativa teve que ser feita. Logo, Perl tem maior expressividade. 

### Desempenho

Programas grandes escritos em Perl iniciam mais devagar do que programas semelhantes escritos em linguagens compiladas, isso porque Perl tem que compilar a fonte sempre que é executado. O interpretador Perl também gasta um tempo significativo procurando módulos.

Uma vez que o código Perl é compilado, há sobrecarga adicional durante a fase de execução, que normalmente não acontece em programas escritos em linguagens compiladas, como C.

Como Perl é uma linguagem interpretada, pode dar problemas quando a eficiência é crítica.

[Voltar ao topo](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#artigo-perl)

---

## Conclusão

Apesar de, em um primeiro encontro, o Perl parecer difícil de ler devido às variáveis padrões e expressões regulares, Perl é uma linguagem fácil de se aprender e usar, com uma extensa documentação disponível na Internet sobre o seu funcionamento.

Por ser interpretado, Perl é mais lento que linguagens compiladas, como o C.

Por ter tipagem dinâmica, é mais difícil constatar erros do que linguagens estaticamente tipadas, como o C.

Perl é muito popular devido à sua sintaxe de regex, que se tornou padrão para outras linguagens de programação.

[Voltar ao topo](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#artigo-perl)

---

## Bibliografia

* [Derek Banas - Perl Tutorial](https://www.youtube.com/watch?v=WEghIXs8F6c)
* [Holly Spirit University of Kaslik - Perl Programming](https://pt.slideshare.net/elieobeid7/perl-programming-language)
* [J. Korpela  - Perl](https://www.cs.tut.fi/~jkorpela/perl)
* [Perl Maven](https://perlmaven.com/perl-tutorial)
* [Perl Monks](http://www.perlmonks.org)
* [Perl Programming Documentation](https://perldoc.perl.org/index.html)
* [Somacon - Perl Programming](http://www.somacon.com/p385.php?cat=Perl+Programming)
* [Tutorials Point  - Perl](https://www.tutorialspoint.com/perl)
* [Wikipedia en - Perl](https://en.wikipedia.org/wiki/Perl)
* [Wikipédia pt - Perl](https://pt.wikipedia.org/wiki/Perl)

[Voltar ao topo](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#artigo-perl)
