use v5.16;

use strict;
use warnings;
use diagnostics;

use feature "say";
use feature "switch";

# Operações
say "5 + 5 = ", 5 + 5;
say "5 - 3 = ", 5 - 3;
say "5 * 5 = ", 5 * 5;
say "5 / 2 = ", 5 / 2;
say "5 % 2 = ", 5 % 2;
say "2 ** 3 = ", 2 ** 3;

my $number = 5;
say "$number += 2 = ", $number += 2;
say "$number -= 2 = ", $number -= 2;
say "$number *= 2 = ", $number *= 2;
say "$number /= 2 = ", $number /= 2;

# Funções matemáticas
say "EXP 1 = ", exp 1; # e ** 1
say "HEX 10 = ", hex 10; # De hexadecimal para decimal
say "OCT 10 = ", oct 10; # De octal para decimal
say "INT 19.94 = ", int(19.94); # Truncamento
say "LOG 2 = ", log 2;
say "Random 0 - 10 = ", int(rand 11);
say "SQRT 9 = ", sqrt 9;

# Incremento e decremento
say "$number++ = ", $number++;
say "++$number = ", ++$number;
say "$number-- = ", $number--;
say "--$number = ", --$number;

# Ordem de operações
say "3 + 2 * 5 = ", 3 + 2 * 5;
say "(3 + 2) * 5 = ", (3 + 2) * 5;
# Ordem
