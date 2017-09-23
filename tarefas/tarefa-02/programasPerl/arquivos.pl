use v5.16;

use strict;
use warnings;
use diagnostics;

use feature "say";
use feature "switch";

# Abrir um aquivo
my $emp_file = "employees.txt";
open my $fh, "<", $emp_file # < é modo de leitura
  or die "Can't open file: $_";

while(my $info = <$fh>) {
  chomp($info);

  my ($emp_name, $job, $id) = split /:/, $info;

  say "$emp_name ia a $job and has the id $id";
}

# Fechar o arquivo
close $fh or die "Couldn't close file: $_";

# Abrir o arquivo
open $fh, ">>", $emp_file # >> é modo de escrita
  or die "Can't open file: $_";

print $fh "Mark:Salesman:124\n";

# Fechar o arquivo
close $fh or die "Couldn't close file: $_";

# Abrir o arquivo
open $fh, "+<", $emp_file # +< é modo de leitura e escrita
  or die "Can't open file: $_";

seek $fh, 0, 0;

print $fh "Phil:Salesman:125\n";

# Fechar o arquivo
close $fh or die "Couldn't close file: $_";