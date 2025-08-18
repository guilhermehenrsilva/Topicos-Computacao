import 'dart:io';

double calcularFormula(double x, double y, double z) {
  return (x * x) + y + z;
}

void main() {
  print('Digite o valor de X:');
  double x = double.parse(stdin.readLineSync()!);

  print('Digite o valor de Y:');
  double y = double.parse(stdin.readLineSync()!);

  print('Digite o valor de Z:');
  double z = double.parse(stdin.readLineSync()!);

  double resultado = calcularFormula(x, y, z);

  print('O resultado de (x*x) + y + z é: $resultado');
}