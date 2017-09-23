# Artigo Perl

## Introdução
### Perl

Practical Extraction and Reporting Language
Linguagem de Extração e Relatório prático

Criado inicialmente para processamento de textos e para gerar relatórios.

## Origens e Influências
Desenvolvida por Larry Wall e lançada em 1987, 4 anos antes do Linux.
A ideia do Larry era desenvolver uma linguagem com as expressões regulares do 'sed', a identificação de padrões do AWK, a profundidade do C e a sintaxe baseada tanto em C quanto em Shell Script.
Em 1994 foi lançado o Perl 5, tornando-se uma linguagem completa.
Conhecido como o canivete suíço da Internet.
A fita adesiva que mantém a Internet inteira.

## Classificação
* Alto nível
* Interpretada
* Dinâmica

### Alguns usos:
* Administração de sistemas
* Programação de redes
* Finança
* Bioinformática
* Desenvolvimento de sites

## Avaliação Comparativa
### Concatenação de strings

#### Perl

```perl
# Entrada
print "Digite a primeira string: ";
my $str1 = <STDIN>;

print "Digite a segunda string: ";
my $str2 = <STDIN>;

# Remove as quebras de linha no fim das strings
chomp $str1;
chomp $str2;

# Concatena a str2 à str1
$str1 = $str1 . $str2;

# Resultado
print "Concatenação: $str1\n";
```

#### C

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

  // Concatena a str2 à str1
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

### Contexto de variáveis


## Conclusão
Strings e expressões regulares
Contexto de variáveis (escalar e lista) e também a variável padrão "$_".

