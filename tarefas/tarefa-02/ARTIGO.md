# Artigo Perl

Grupo:

* @felipeog
* @Dr-Pudim

---

## Introdução

### Perl :dromedary_camel:

* Practical Extraction and Reporting Language
* Linguagem de Extração e Relatório Prático

Criado inicialmente para processar textos e gerar relatórios, é útil para aplicações que necessitam de facilidade de manipulação de strings.

Conhecido como o canivete suíço da Internet e a fita adesiva que a mantém inteira, um pequeno código Perl é capaz de realizar muitas ações.

---

## Índice

1. [Origens e Influências](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#origens-e-influências)
2. [Classificação](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#classificação)
3. [Características](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#características)
4. [Avaliação comparativa](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#avaliação-comparativa)
5. [Conclusão](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#conclusão)
6. [Bibliografia](https://github.com/felipeog/EDL/blob/master/tarefas/tarefa-02/ARTIGO.md#bibliografia)

---

## Origens e Influências

Foi desenvolvida por Larry Wall e lançada em 1987.

A ideia do Larry era desenvolver uma linguagem que combinasse as expressões regulares do 'sed', a identificação de padrões do AWK, a profundidade do C e a sintaxe baseada tanto em C quanto em Shell Script, tudo isso para facilitar o processamento de texto em sistemas baseados em Unix.

Em 1992 se encontrava na versão 4, quando se tornou uma linguagem padrão para Unix. Também nessa época ficou evidente que não era possível criar grandes programas com Perl.

Em 1994 foi lançada a versão 5, tornando-se uma linguagem completa.

---

## Classificação

* Multiparadigma
  * Funcional
  * Imperativa
  * Orientada a objeto
  * Reflexiva
  * Procedural
  * Orientada a evento
  * Genérica
* Multiplataforma
* Tipagem dinâmica
* Interpretada
* Alto nível
* Propósito geral
* Software livre

### Alguns usos:

* Administração de sistemas
* Programação de redes
* Finança
* Bioinformática
* Desenvolvimento de sites
* Computação gráfica

---

## Características

### Strings e expressões regulares

Uma expressão regular é capaz de identificar uma cadeia de caracteres de interesse e aplicar alguma operação sobre ela.

A sintaxe das expressões regulares no Perl se assemelha a das linguagens 'sed', grep e AWK.

Para aplicar a expressão regular usamos =~.

Existem três operadores de expressão regular no Perl:

* Correspondência
  * m//
* Substituição
  * s///
* Transliteração
  * tr///

#### Correspondência

Verifica se o padrão existe dentro da string especificada. Caso existe, retorna 1. Caso contrário, retorna 0.

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

#### Verificação simples de e-mail

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
Na linha 5, uma lista está sendo atribuída à outra lista, assim criando uma cópia da lista.

Na linha 6, uma lista está sendo atribuída à uma escalar, assim passando a quantidade de itens na lista.

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

O if espera receber uma escalar. Na linha 3 passamos uma lista para ele. Quando passamos uma lista em um contexto escalar, recebemos o tamanho da lista.

Logo, se o tamanho da lista é 0, o if interpreta como FALSE. Se o tamanho é igual ou maior que 1, interpreta como TRUE. 

A saída será:

```
Existem itens nessa lista.
```

### Variável padrão $_

A variável padrão $_ é uma das variáveis especiais do Perl mais usada. Ela pode conter a entrada padrão ou a string de uma expressão regular.

#### Exemplo 1

```perl
#!/usr/bin/perl
use strict;
use warnings;

foreach('Larry ', 'Wall ', 'Perl ') {
  print $_;
}
```

A saída desse programa será cada um dos itens da lista.

Isso acontece porque a cada iteração, o atual item da lista é colocado na variável padrão $_.

```perl
#!/usr/bin/perl
use strict;
use warnings;

@nomes = ('Huga', 'Buga');
for(@nomes) {
  print;
}
```

A saída desse programa também será cada um dos itens da lista.

Podemos omitir a variável padrão $_.

#### Exemplo 2

```perl
#!/usr/bin/perl
use strict;
use warnings;

my $emp_file = "employees.txt";
open my $fh, "<", $emp_file # < é modo de leitura
  or die "Can't open file: $_";

close $fh
  or die "Couldn't close file: $_";
```

---

## Avaliação Comparativa

### Concatenação de strings

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

---

Para escrever o mesmo programa em C, uma reestruturação significativa teve que ser feita. Logo, Perl tem maior expressividade. 

### Desempenho

Programas grandes escritos em Perl iniciam mais devagar do que programas semelhantes escritos em linguagens compiladas, isso porque Perl tem que compilar a fonte sempre que é executado. O interpretador Perl também gasta um tempo significativo procurando módulos dentro do seu longo caminho de inclusão.

Uma vez que o código Perl é compilado, há sobrecarga adicional durante a fase de execução, que normalmente não acontece em programas escritos em linguagens compiladas, como C.

Como Perl é uma linguagem interpretada, pode dar problemas quando a eficiência é crítica.


---

## Conclusão

---

## Bibliografia

* [Derek Banas - Perl Tutorial](https://www.youtube.com/watch?v=WEghIXs8F6c)
* [J. Korpela  - Perl](https://www.cs.tut.fi/~jkorpela/perl)
* [Perl Maven](https://perlmaven.com/perl-tutorial)
* [Perl Monks](http://www.perlmonks.org)
* [Perl Programming Documentation](https://perldoc.perl.org/index.html)
* [Somacon - Perl Programming](http://www.somacon.com/p385.php?cat=Perl+Programming)
* [Tutorials Point  - Perl](https://www.tutorialspoint.com/perl)
* [Wikipedia en - Perl](https://en.wikipedia.org/wiki/Perl)
* [Wikipédia pt - Perl](https://pt.wikipedia.org/wiki/Perl)
