package Animal::Lion;

# Herança
use Animal::Cat;

use strict;
use warnings;

# para herdar todas as variáveis e subrotinas
our @ISA = qw(Animal::Cat);

# Sobreescrever uma rotina
sub getSound {
  my ($self) = @_;

  return $self->{name}, " says roar.";
}

1;
