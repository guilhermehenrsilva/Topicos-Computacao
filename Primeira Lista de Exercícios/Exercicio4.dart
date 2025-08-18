import 'dart:io';

void main() {
  const precosSalgados = {'Coxinha': 5.50, 'Pastel': 6.00, 'Esfiha': 7.00};
  const precosBebidas = {'Refrigerante': 8.00, 'Suco': 6.50};

  
  print('Salgados disponíveis: Coxinha, Pastel, Esfiha');
  print('Digite o tipo do salgado:');
  String tipoSalgado = stdin.readLineSync()!;
  print('Digite a quantidade de salgados:');
  int qtdSalgados = int.parse(stdin.readLineSync()!);

  print('\nBebidas disponíveis: Refrigerante, Suco');
  print('Digite o tipo da bebida:');
  String tipoBebida = stdin.readLineSync()!;
  print('Digite a quantidade de bebidas:');
  int qtdBebidas = int.parse(stdin.readLineSync()!);

  double totalSalgados = (precosSalgados[tipoSalgado] ?? 0) * qtdSalgados;
  double totalBebidas = (precosBebidas[tipoBebida] ?? 0) * qtdBebidas;
  double valorTotal = totalSalgados + totalBebidas;

  print('\n--- Resumo do Pedido ---');
  print('$qtdSalgados x $tipoSalgado = R\$ ${totalSalgados.toStringAsFixed(2)}');
  print('$qtdBebidas x $tipoBebida = R\$ ${totalBebidas.toStringAsFixed(2)}');
  print('Subtotal: R\$ ${valorTotal.toStringAsFixed(2)}');


  if (valorTotal > 100.00) {
    double desconto = valorTotal * 0.10; // 10% de desconto
    valorTotal -= desconto;
    print('Desconto (10%): R\$ ${desconto.toStringAsFixed(2)}');
  }

  
  print('Valor total a pagar: R\$ ${valorTotal.toStringAsFixed(2)}');
}