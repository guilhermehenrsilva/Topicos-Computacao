import 'dart:io';

void main() {
  print('Digite o ano de fabricação do carro:');
  int ano = int.parse(stdin.readLineSync()!);

  print('Digite o valor de tabela do carro:');
  double preco = double.parse(stdin.readLineSync()!);

  double imposto;

  if (ano < 2000) {
    imposto = preco * 0.01; // Taxa de 1%
  } else {
    imposto = preco * 0.015; // Taxa de 1.5%
  }

  print('O valor do imposto a ser pago é: R\$ ${imposto.toStringAsFixed(2)}');
}