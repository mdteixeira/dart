void funcoes() {
  printName('Matheus');
  var number = returnNumber();
  print(number);
  var resultado = sum(10, 20);
  print(resultado);
}

void printHelloWorld() {
  print("Hello World!");
}

void printName(name) {
  print("Olá, $name!");
}

int returnNumber() {
  return 30;
}

int sum(int n1, int n2) {
  return n1 + n2;
}
