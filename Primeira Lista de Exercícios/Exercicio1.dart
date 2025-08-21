import 'dart:io';

void main() {

  print('Digite um número inteiro:');
  int numeroInteiro = int.parse(stdin.readLineSync()!);

  print('O número inteiro digitado foi: $numeroInteiro');

  print('\n');

  print('Digite um número real (ex: 5.5):');
  double numeroReal = double.parse(stdin.readLineSync()!);

  print('O número real digitado foi: $numeroReal');
}