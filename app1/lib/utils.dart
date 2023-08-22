import 'dart:convert';
import 'dart:io';

String lerConsole(frase) {
  print(frase);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}