# Entrada
print "Digite a primeira string: ";
my $str1 = <STDIN>;

print "Digite a segunda string: ";
my $str2 = <STDIN>;

# Remove as quebras de linha no fim das strings
chomp $str1;
chomp $str2;

# Concatena a str2 à str1
my $str1 = $str1 . $str2;

# Resultado
print "Concatenação: $str1\n";

