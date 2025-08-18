import 'dart:io';

void main() {
  print('Digite um número inteiro para calcular seu fatorial:');
  int numero = int.parse(stdin.readLineSync()!);

  BigInt fatorial = BigInt.one;

  for (int i = 1; i <= numero; i++) {
    fatorial *= BigInt.from(i);
  }

  print('O fatorial de $numero é: $fatorial');
}