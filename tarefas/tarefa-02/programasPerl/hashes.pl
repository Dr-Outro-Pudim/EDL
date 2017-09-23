use v5.16;

use strict;
use warnings;
use diagnostics;

use feature "say";
use feature "switch";

# Criando um hash
my %employees = (
  "Sue" => 35,
  "Paul" => 43,
  "Sam" => 39
);

# Acessando um valor do hash
printf("Sue is %d\n", $employees{Sue});

# Adicionando um novo valor
$employees{Frank} = 44;
printf("Frank is %d\n", $employees{Frank});

# Iterando chaves e valores de um hash
while(my ($k, $v) = each %employees) {
  say "$k is $v years old.";
}

# Pegar valores do  hash
my @ages = @employees{"Sue", "Sam"};
say join ", ", @ages;

# Converter um hash em uma array
my @hash_array = %employees;
say @hash_array;

# Deletar chaves e valores
delete $employees{Frank};
while(my ($k, $v) = each %employees) {
  say "$k is $v years old.";
}

# Checar se uma chave existe
say ((exists $employees{"Sam"}) ? "Sam is here." : "Sam is not here.");

# Iterando chaves de um hash
for my $key (keys %employees) {
  if($employees{$key} == 35) {
    say "Hi, Sue!";
  }
}
