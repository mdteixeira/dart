import 'dart:convert';
import 'dart:io';

void calculadora() {
  var numero1 = lerConsoleDouble("insira o primeiro número :");
  var numero2 = lerConsoleDouble("insira o segundo número : ");
  var operacao = lerConsole("insira a operação ( + , - , * , /) :");
  calcular(operacao, numero1, numero2);
}

void calcular(String operacao, double numero1, double numero2) {
  double resultado = 0;
  switch (operacao) {
    case "+":
      resultado = soma(numero1, numero2);
    case "-":
      resultado = subtracao(numero1, numero2);
    case "*":
      resultado = multiplicacao(numero1, numero2);
    case "/":
      resultado = divisao(numero1, numero2);
    default:
      print("Operação inválida!");
      exit(0);
  }
  print("o resultado da operação é $resultado");
}

String lerConsole(frase) {
  print(frase);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double lerConsoleDouble(String frase) {
  var numero = double.tryParse(lerConsole(frase));
  if (numero == null) {
    return 0.0;
  } else {
    return numero;
  }
}
double soma(numero1, numero2) {
  return numero1 + numero2;
}

double multiplicacao(numero1, numero2) {
  return numero1 * numero2;
}

double divisao(numero1, numero2) {
  return numero1 / numero2;
}

double subtracao(numero1, numero2) {
  return numero1 - numero2;
}
