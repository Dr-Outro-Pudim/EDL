use v5.16;

use strict;
use warnings;
use diagnostics;

use feature "say";
use feature "switch";

# for
for(my $i = 0; $i < 10; $i++) {
  say $i;
}

#while
my $i = 0;

while($i < 10) {
  if($i % 2 == 0) {
    $i++;
    next; # Pula para a próxima repetição
  }

  if($i == 7) {
    last; # Quebra repetição por completo
  }

  say $i;
  $i++;
}

# do while
my $lucky_number = 7;
my $guess;

do {
  say "Guess a number between 1 and 10: ";
  $guess = <STDIN>;
} while($guess != $lucky_number);

say "You guessed 7.";

# given when
my $age_old = 23;

given($age_old) {
  when($_ > 16) { # $_ representa o valor de $age_old
    say "Drive.";
  }

  when($_ > 17) {
    say "Go vote.";
  }

  default {
    say "Nothing special.";
  }
}
