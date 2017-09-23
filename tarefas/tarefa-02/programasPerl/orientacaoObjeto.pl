use v5.16;

use strict;
use warnings;
use diagnostics;

use feature "say";
use feature "switch";

use lib "lib"; # Pasta onde a biblioteca se encontra
use Animal::Cat; # lib/Animal/Cat.pm
use Animal::Lion; # lib/Animal/Lion.pm

# Criando um objeto da classe Cat
my $whiskers = new Animal::Cat("whiskers", "Derek");

# Pegando o nome
say $whiskers->getName();

# Mudando o nome
$whiskers->setName("Whiskers");
say $whiskers->getName();

say $whiskers->getSound();

# Criando um objeto da classe Lion
my $dave = new Animal::Lion("dave", "Felipe");

# Pegando o nome
say $dave->getName();

# Mudando o nome
$dave->setName("Dave");
say $dave->getName();

say $dave->getSound();
