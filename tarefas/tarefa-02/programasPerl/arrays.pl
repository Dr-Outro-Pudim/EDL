use v5.16;

use strict;
use warnings;
use diagnostics;

use feature "say";
use feature "switch";

# Uma array é uma lista de escalares
# Suporta vários tipos
my @primes = (2, 3, 5, 7, 13, 17);
my @my_info = ("Felipe", "Fonseca", 23, 1.75);

# Adicionando dados pelo índice
$my_info[4] = "Oliveira";

# Iterando uma array
for my $info (@my_info) {
  say $info;  
}

foreach my $num (@primes) {
  say $num;
}

for(@my_info) {
  say $_;
}

# Fatiando uma array
# Pegando os índices 0 e 4
my @my_name = @my_info[0, 4];
say join(" ", @my_name);

# Pegando o tamanho da array
my $items = scalar @my_info;
say $items;

# Atribuir itens de uma array à variáveis
my ($f_name, $address, $how_old, $height, $l_name) = @my_info;
say qq{$f_name $l_name};

# Remover o último item de uma array
say "Popped value: ", pop @primes;
say join(", ", @primes);

# Adicionar um item ao final da array
say "Pushed value: 17. Array length: ", push @primes, 17;
say join(", ", @primes);

# Remove o primeiro item da array
say "First item: ", shift @primes;
say join(", ", @primes);

# Adicionar um item no início da array
say "Unshifted value: 2. Array length: ", unshift @primes, 2;
say join(", ", @primes);

# Remove itens da array
# Primeiro argumento: índice inicial
# Segundo argumento: extensão da remoção
say "Remove index 0 - 2. Items: ", join(", ", splice @primes, 0, 3);
say join(", ", @primes);

# Junta itens
print join " ", ("list", "of", "words", "\n");

# Transformar um a string em uma array
my $costumers = "Sue Sally Paul";
my @cust_array = split / /, $costumers;
say join(", ", @cust_array);

# Inverter uma array
@cust_array = reverse @cust_array;
say join(", ", @cust_array);

# Organizar uma array em ordem crescente
@cust_array = sort @cust_array;
say join(", ", @cust_array);

# Organizar uma array em ordem decrescente
@cust_array = reverse sort @cust_array;
say join(", ", @cust_array);

# Filtrar uma array de acordo com uma expressão
my @number_array = (1, 2, 3, 4, 5, 6, 7, 8);
my @odds_array = grep {$_ %2} @number_array;

say join(", ", @odds_array);

# Executar uma função em cada item da array
my @dbl_array = map {$_ * 2} @number_array;
say join(", ", @dbl_array);
