void optional() {
  printName('Matheus');
  printName('Lucas', sobrenome: 'Teixeira');
}

void printName(String nome, {String? sobrenome}) {
  print("My name is: $nome");
  if (sobrenome != null) {
    print("my lastname is $sobrenome");
  }
}

printData(String texto) => print(texto);
soma(n1, n2) => n1 + n2;

