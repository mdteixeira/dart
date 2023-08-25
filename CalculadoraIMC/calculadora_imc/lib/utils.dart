import 'dart:convert';
import 'dart:io';

class Utils {
  static String lerString({texto = ""}) {
    if (texto != "") {
      print(texto);
    }
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble({texto = ""}) {
    var value = lerString(texto: texto);
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }
}
