import 'package:app1/app1.dart' as app1;

void main(List<String> arguments) {
  // Declarando variáveis

  String texto = 'texto da var';
  var texto2 = "texto da var";
  String texto3;

  List<String> lista = [];
  lista.add("a");

  var lista1 = [];
  lista1.add("item");
  lista1.add(1);
  lista1.add(1.2);

  /////////////////////////////

  int numero1 = 10;
  var numero2 = 11;

  print("retorna verdadeiro se o numero for par");
  print(numero1.isEven);
  print(numero2.isEven);
  print("retorna verdadeiro se o numero for impar");
  print(numero1.isEven);
  print(numero2.isEven);

  // converter variaveis

  String parseTest = "100";
  print(parseTest);
  print(int.tryParse(
      parseTest)); // o try evita erros, e retorna 'null' se nao conseguir converter

  // truncate : remove o ponto flutuante

  double numDouble1 = 10.95;
  var num_2 = 15.15;

  print(numDouble1.truncate());
  print(num_2.truncate());

  /////////

  // Strings

  String texto_1 = 'Texto 1';
  var texto_2 = 'Texto 2';

  print(texto_1.length);
  print(texto_1.toLowerCase());

  print(texto_1.substring(5));
  print(texto_2.substring(1, 5));

  print(texto_1.indexOf("Texto"));
  print(texto_2.indexOf("2"));

  print(texto_1.replaceAll('xto', 'ste'));
  print(texto_1.split(' ')); // separa a partir do item definido

  print(" Teste de Texto     ".trim()); // remove os espacos ; pode ser Left ou Right tambem
}
