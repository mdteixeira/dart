import 'dart:convert';
import 'dart:io';

void calculadora() {
  print("insira o primeiro número :");
  var line = stdin.readLineSync(encoding: utf8);
  var num1 = double.parse(line ?? '0');
  print("insira o primeiro número :");
  line = stdin.readLineSync(encoding: utf8);
  var num2 = double.parse(line ?? '0');
  print("insira a operação ( + , - , * , /) :");
  line = stdin.readLineSync(encoding: utf8);
  var operacao = line ?? '';

  double resultado = 0;
  if (operacao == "+") {
    resultado = num1 + num2;
  } else if (operacao == "-") {
    resultado = num1 - num2;
  } else if (operacao == "*") {
    resultado = num1 * num2;
  } else if (operacao == "/") {
    resultado = num1 / num2;
  } else {
    print("Operação inválida!");
    exit(0);
  }
  print("o resultado da operação é $resultado");
}
