my $pattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}";

print "Digite o e-mail: ";

my $email = <STDIN>;
chomp $email;

if($email =~ /$pattern/) {
  print "Válido.\n";
} else {
  print "Inválido.\n";
}

