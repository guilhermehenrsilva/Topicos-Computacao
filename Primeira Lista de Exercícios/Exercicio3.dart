import 'dart:io';

void main() {
  print('Digite o salário do funcionário:');
  double salario = double.parse(stdin.readLineSync()!);
  double novoSalario = salario * 1.15;
  print('O novo salário com 15% de aumento é: R\$ ${novoSalario.toStringAsFixed(2)}');
}