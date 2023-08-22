import 'dart:convert';
import 'dart:io';

void mod2() {
  print("insira a primeira nota:");
  var line = stdin.readLineSync(encoding: utf8);
  var nota1 = int.parse(line ?? '0');
  print("insira a segunda nota:");
  line = stdin.readLineSync(encoding: utf8);
  var nota2 = int.parse(line ?? '0');

  var media = (nota1 + nota2) / 2;

  print(media);
  print(media >= 7);

  if (media >= 7) {
    print('O aluno passou com a nota: $media');
  } else if (media >= 5) {
    print('O aluno ficou de rec com a nota: $media');
  } else {
    print('O aluno reprovou com a nota: $media');
  }

  // ternario
  var resultado = (nota1 >= 7) ? "passou" : "reprovou";
  print(resultado);
}
