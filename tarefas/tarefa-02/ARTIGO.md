# Artigo Perl

Grupo:

* @felipeog(Felipe Oliveira)
* @Dr-Pudim(Renan Mendonça)

## Introdução

### Perl :dromedary_camel:

* Practical Extraction and Reporting Language
* Linguagem de Extração e Relatório Prático

Criado inicialmente para processar textos e gerar relatórios, é útil para aplicações que necessitam de facilidade de manipulação de strings.

Conhecido como o canivete suíço da Internet e a fita adesiva que a mantém inteira, um pequeno código Perl é capaz de realizar muitas ações.

## Índice

[1. Origens e Influências](#OeI)
[2. Classificação](#Class)
[3. Características](#Carac)
[4. Avaliação comparativa](#Ava)
[5. Conclusão](#Conclu)
[6. Bibliografia](#Biblio)

## Origens e Influências

Foi desenvolvida por Larry Wall e lançada em 1987.

A ideia do Larry era desenvolver uma linguagem que combinasse as expressões regulares do 'sed', a identificação de padrões do AWK, a profundidade do C e a sintaxe baseada tanto em C quanto em Shell Script, tudo isso para facilitar o processamento de texto em sistemas baseados em Unix.

Em 1992 se encontrava na versão 4, quando se tornou uma linguagem padrão para Unix. Também nessa época ficou evidente que não era possível criar grandes programas com Perl.

Em 1994 foi lançada a versão 5, tornando-se uma linguagem completa.

##<a name="OeI"></a> Classificação

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

##<a name="Carac"></a> Características

### Strings e expressões regulares

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

### Variável padrão

##<a name="Ava"></a> Avaliação Comparativa

### Concatenação de strings

#### Perl

A concatenação de strings com Perl é bastante simples e não requer verbosidade excessiva.

```perl
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

##<a name="Conclu"></a> Conclusão

* Strings e expressões regulares
* Contexto de variáveis (escalar e lista) e também a variável padrão "$_".

##<a name="Biblio"></a> Bibliografia
