import 'dart:io';

double calcularAcrecimoPercentual(double valorAntigo, double valorAtual) {
  if (valorAntigo == 0) {
    return 0; 
  }
  return ((valorAtual - valorAntigo) / valorAntigo) * 100;
}

void main() {
  print('Digite o valor antigo do produto:');
  double antigo = double.parse(stdin.readLineSync()!);

  print('Digite o valor atual do produto:');
  double atual = double.parse(stdin.readLineSync()!);

  double percentual = calcularAcrecimoPercentual(antigo, atual);

  print('O acréscimo foi de ${percentual.toStringAsFixed(2)}%');
}