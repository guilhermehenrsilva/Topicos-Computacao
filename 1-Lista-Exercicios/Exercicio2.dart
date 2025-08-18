import 'dart:io';

void main() {
  print('Digite um número real para saber sua quinta parte:');
  double numero = double.parse(stdin.readLineSync()!);

  double quintaParte = numero / 5;

  print('A quinta parte de $numero é: $quintaParte');
}