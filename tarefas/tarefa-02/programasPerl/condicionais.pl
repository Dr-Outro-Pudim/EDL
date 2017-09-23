use v5.16;

use strict;
use warnings;
use diagnostics;

use feature "say";
use feature "switch";

# Perl considera como falso: 
# undef
# 0
# 0.0
# ""
# "0"

# Operadores:
# == : igual
# != : diferente
# <  : menor que
# >  : maior que
# <= : menor ou igual
# >= : maior ou igual
# !  : negação
# && : e
# || : ou

my $age = 23;
my $is_not_intoxicated = 1;
my $age_last_exame = 16;

if ($age < 16) {
  say "You can't drive.";
} elsif (!$is_not_intoxicated) {
  say "You can't drive.";
} else {
  say "You can drive.";
}

if(($age >= 1) && ($age < 16)) {
  say "You can't drive.";
} elsif (!$is_not_intoxicated) {
  say "You can't drive.";
} elsif (($age >= 80) && (($age > 100) || (($age - $age_last_exame) > 5))) {
  say "You can't drive.";
} else {
  say "You can drive.";
}

# Operadores de strings
# eq : igual
# ne : diferente
# lt : menor que
# le : menor ou igual
# gt : maior que
# ge : maior ou igual

if('a' eq 'b') {
  say "a equals b";
} else {
  say "a doesn't equal b";
}

# unless: o contrário de if
# Enquanto o if executa se a condição é verdadeira,
# unles executa se a condição é falsa.
unless($is_not_intoxicated) {
  say "Get sober.";
};

# Operador ternário
say (($age > 18) ? "Can vote." : "Can't vote.");
