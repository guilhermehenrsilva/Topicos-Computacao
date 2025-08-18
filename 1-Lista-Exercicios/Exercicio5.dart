import 'dart:io';

void main() {
  print('Digite o preço de etiqueta do produto:');
  double precoEtiqueta = double.parse(stdin.readLineSync()!);

  print('\nEscolha a condição de pagamento:');
  print('1 - À vista em dinheiro ou cheque (10% de desconto)');
  print('2 - À vista no cartão de crédito (5% de desconto)');
  print('3 - Em 2 vezes (preço normal)');
  print('4 - Em 3 vezes (10% de juros)');

  int condicao = int.parse(stdin.readLineSync()!);
  double precoFinal = 0;

  // Estrutura switch para decidir o cálculo
  switch (condicao) {
    case 1:
      precoFinal = precoEtiqueta * 0.90; // Desconto de 10%
      break;
    case 2:
      precoFinal = precoEtiqueta * 0.95; // Desconto de 5%
      break;
    case 3:
      precoFinal = precoEtiqueta;
      double parcela = precoFinal / 2;
      print('O valor de cada parcela será: R\$ ${parcela.toStringAsFixed(2)}');
      break;
    case 4:
      precoFinal = precoEtiqueta * 1.10; // Juros de 10%
      double parcela = precoFinal / 3;
      print('O valor de cada parcela será: R\$ ${parcela.toStringAsFixed(2)}');
      break;
    default:
      print('Opção inválida!');
      return;
  }

  print('O valor total a pagar é: R\$ ${precoFinal.toStringAsFixed(2)}');
}