import 'dart:convert';
import 'dart:io';

void mod3() {
  // for (var i = 0; i < 5; i++) {
  //   print(i);
  // }

  // var texto = 'string';
  // for (var i = 0; i < texto.length; i++) {
  //   print(texto[i]);
  // }
  // var listaNomes = ['Matheus', 'Duda', 'Renato'];
  // for (var i = 0; i < listaNomes.length; i++) {
  //   print(listaNomes[i]);
  // }

  var numeros = [1, 5, 6, 56, 5, 7, 8, 98];

  var acumulador = 0;
  for (var numero in numeros) {
    acumulador = acumulador + numero;
    print(acumulador);
  }
  var letras = ['a', 'c', 'm', 'n', 'k'];
  for (var letra in letras) {
    print(letra);
  }

  letras.forEach((element) {
    print((element));
  });

  var i = 0;
  var total = 10;
  while (i < total) {
    print(i);
    i++;
  }

  print("Digite um número ou 'S' para sair");
  var line = stdin.readLineSync(encoding: utf8);
  double j = 0;
  while (line != 'S') {
    var numero = double.parse(line ?? '');
    j = j + numero;
    print("Digite um número ou 'S' para sair");
    line = stdin.readLineSync(encoding: utf8);
  }
  print(j);
}
