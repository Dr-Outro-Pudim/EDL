use strict;
use warnings;
use diagnostics;
# Mostram mensagens de erro que fazem sentido

# ---Features
use feature "say"; # Imprime uma linha e pula uma linha
use feature "switch"; # Switch case

use v5.16; # Especifica a versão do Perl que o código deve usar

# ---Imprimindo
print "Olá, mundo!\n"; # A função print não pula linha automaticamente
say "Rojas"; # A feature say pula linha

# ---Escalares
my $name = "Felipe";

my ($age, $street) = (23, "São Boaventura");

my $my_info = "$name lives on $street.";
# Geralmente separamos palavras com underline

$my_info = qq{$name lives on "$street".};
# qq{} coloca aspas duplas entre o que estiver dentro dele, q{} coloca aspas simples

# Primeiro definimos como termina a escalar, depois adicionamos várias linhas de informação
my $bunch_of_info = <<"END";
This is a
bunch of information
on multiple lines
END

$bunch_of_info = <<"END";
1
2
3
END

# ---printf
# %c character
# %s string
# %d decimal
# %u unsigned interger
# %f float decimal
# %e float scientific
my $my_decimal = 23;
printf("%d\n", $my_decimal + 1);

my $big_float = .1000000000000001; # 16 bits de precisão
printf("%.16f\n", $big_float + .1000000000000001);

my ($first, $second) = (1, 2);
($first, $second) = ($second, $first); # Invertendo o conteúdo das escalares
say qq{$first $second};

