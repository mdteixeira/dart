import 'dart:ffi';

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

  print(" Teste de Texto     "
      .trim()); // remove os espacos ; pode ser Left ou Right tambem

  ///// List

  List<String> lstString = [];
  var lstInt = [1, 3, 5];
  List lstDynamic = [];

  // tamanho da lista
  print(lstInt.length);

  // adicionar items
  lstString.add('item');

  // remover items
  lstString.remove('item');

  // verifica se a lista está vazia
  print(lstDynamic.isEmpty);

  //
  // funcao Where
  //
  print(lstInt.where((x) => x > 3));

  // map

  Map<String, dynamic> map1 = Map<String, dynamic>();
  var map = {
    'nome': 'Matheus',
    'idade': 18,
    'Hobbies': ['programar', 'tocar instrumentos']
  };

  print(map['nome']);
  map.addAll({'cargo': 'programador', 'time': 'portuguesa'});
  print(map1);

  print(map.containsKey(
      'nome')); // retorna verdadeiro, pois existe a chave 'nome' no map

  // const
  const String variavel = 'ABC';

  // dynamic
  dynamic var1 = 'ABC';

  // DateTime

  DateTime data1 = DateTime.now();
  DateTime data3 = DateTime.parse('2022-18-02 13:30:35');
  var data2 = DateTime.tryParse('2022-02-01 00:00:00');
  

  // é possivel tirar as partes da data
  print(data1.day +
      data1.month +
      data1.year +
      data1.hour +
      data1.minute +
      data1.second +
      data1.weekday);

  // Operações com datas !!!

  data1.add(Duration(days: 1));
  data1.subtract(Duration(days: 1));
  print(data1.isAfter(data3));
  print(data1.isBefore(data3));
  print(data1.compareTo(data3)); // -1 se antes, 0 se igual e 1 se depois
}
