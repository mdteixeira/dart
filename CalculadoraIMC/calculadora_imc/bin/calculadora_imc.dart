import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/utils.dart';

void main(List<String> arguments) {
  print("*** CALCULADORA DE IMC *** \n")
  double? altura = Utils.lerDouble(texto: "Insira a altura (em metros) : ");
  double? peso = Utils.lerDouble(texto: "Insira o peso (em Kg) : ");

  var resultado = calcularIMC(altura!, peso!);
  print(resultado);
}
