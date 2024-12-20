import 'dart:convert';
import 'dart:io';

import 'package:calculoimc/Pessoa.dart';

void main(List<String> arguments) {
  print("Infome seu nome: ");
  String? nome = stdin.readLineSync(encoding: utf8) ?? "";

  print("Informe a sua altura: ");
  var line = stdin.readLineSync(encoding: utf8);
  var altura = double.parse(line == null ? "0" : line);

  print("Informe o seu peso: ");
  line = stdin.readLineSync(encoding: utf8);
  var peso = double.parse(line == null ? "0" : line);

  Pessoa pessoa = new Pessoa(nome, peso, altura);
  print(pessoa.calcularIMC(pessoa.getPeso(), pessoa.getAltura()));
}
