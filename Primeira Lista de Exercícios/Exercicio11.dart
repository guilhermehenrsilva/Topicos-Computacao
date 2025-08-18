import 'dart:io';

void main() {
  List<int> numeros = [];
  for (int i = 0; i < 5; i++) {
    print('Digite o ${i + 1}º número:');
    numeros.add(int.parse(stdin.readLineSync()!));
  }

  print('\nNúmeros na ordem inversa:');

  for (int i = numeros.length - 1; i >= 0; i--) {
    print(numeros[i]);
  }
}