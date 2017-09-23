use v5.16;

use strict;
use warnings;
use diagnostics;

use feature "say";
use feature "switch";

my $long_string = "Random long string";

# Tamanho da string
say "Length of string: ", length $long_string;

# Retorna o índice onde a palavra procurada começa
# Caso não exista, retorna -1
printf("\"long\" is at: %d \n", index $long_string, "long");

# Retorna o índice da última ocorrência
# Caso não exista, retorna -1
printf("Last \"g\" is at: %d \n", rindex $long_string, "g");

# Contatenação
$long_string = $long_string . " isn't that long";

# Retorna uma substring
# Primeiro argumento: índice onde inicia a substring,
# se for negativo, conta a partir do fim da string.
# Segundo argumento: tamanho da substring,
# se for negativo, deixa essa quantidade de caracteres no fim da string.
say "Indes 7 through 10: ", substr $long_string, 7, 4;

# Retorna o pultimo caracter da string e o remove dela
my $animal = "Animals";
say $animal;
printf("Last character is %s\n", chop $animal);
say $animal;

# Remove a última quebra de linha
my $no_newline = "No Newline\n";
print $no_newline;
chomp $no_newline;
print $no_newline;
say "---";

# Uppercase e lowercase
printf("Uppercase: %s\n", uc $long_string);
printf("Lowercase: %s\n", lc $long_string);

# Primeiro caracter uppercase e primeiro caracter lowercase
printf("1st uppercase: %s\n", ucfirst $long_string);
printf("1st lowercase: %s\n", lcfirst $long_string);

# Expressões regulares
# $variável =~ espressão_regular 
$long_string =~ s/ /, /g; # Substitui um espaço por uma vírgula e um espaço
say $long_string;

# Repetir strings
my $two_times = "What is said is " x 4;
say $two_times;

# Array de caracteres
my @a_z = ('a' .. 'z');
my @f_h = ('f' .. 'h');

# Separa cada elemento do array com o primeiro argumento
say join(", ", @a_z);
say join(" - ", @f_h);

# Incremento de caracteres
# Decremento não funciona
my $letter = 'f';

$letter++;
say "Next letter: ", $letter;