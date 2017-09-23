use v5.16;

use strict;
use warnings;
use diagnostics;

use feature "say";
use feature "switch";

sub get_random {
  return int(rand 11);
}

say "Random number: ", get_random();

# Argumentos
sub get_random_max {
  my ($max_number) = @_;

  $max_number ||= 11;
  return int(rand $max_number);
}

say "Random number: ", get_random_max(100);

# Vários argumentos
sub get_sum {
  my ($num1, $num2) = @_;

  $num1 ||= 1;
  $num2 ||= 1;

  return $num1 + $num2;
}

# Quantidade desconhecida de valores
sub sum_many {
  my $sum = 0;

  foreach my $val (@_) {
    $sum += $val;
  }

  return $sum;
}

say "Sum: ", sum_many(1, 2, 3, 4, 5);

# Manter valor da variável dentro da subrotina
sub increment {
  state $execute_total = 0;
  $execute_total++;

  say "Executed $execute_total times.";
}

increment();
increment();
increment();
increment();

# Retornar uma array
sub double_array {
  my @number_array = @_;

  $_ *= 2 for @number_array;

  return @number_array;
}

my @rand_array = (1, 2, 3, 4, 5);

say join ", ", double_array(@rand_array);

# Retornar variáveis
sub get_mults {
  my ($rand_num) = @_;
  $rand_num ||= 1;

  return $rand_num * 2, $rand_num * 3, $rand_num * 4;
}

my ($dbl_num, $trip_num, $quad_num) = get_mults(3);
say "$dbl_num $trip_num $quad_num";

my @get_mults_nums = get_mults(3);
say join ", ", @get_mults_nums;

# Recursão
sub factorial {
  my ($n) = @_;

  return "Invalid input." if $n < 0;
  return 1 if($n == 0 || $n == 1);
  return $n * factorial($n - 1);
}

print "Digite seu número: ";
my $my_num = <STDIN>;

chomp $my_num;
printf "$my_num! = %d\n", factorial($my_num);

for(my $i = -1; $i < 11; $i++) {
  say "Factorial $i = ", factorial($i);
}
