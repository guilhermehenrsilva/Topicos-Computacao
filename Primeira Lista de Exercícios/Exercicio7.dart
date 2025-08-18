import 'dart:io';

void main() {
  print('Digite o salário do funcionário:');
  double salarioAntigo = double.parse(stdin.readLineSync()!);

  print('Digite o cargo do funcionário (ex: Gerente):');
  String cargo = stdin.readLineSync()!;

  double percentualAumento;

  switch (cargo.toLowerCase()) { // toLowerCase para não diferenciar maiúsculas/minúsculas
    case 'gerente':
      percentualAumento = 0.10;
      break;
    case 'engenheiro':
      percentualAumento = 0.20;
      break;
    case 'tecnico':
      percentualAumento = 0.30;
      break;
    default:
      percentualAumento = 0.40; 
  }

  double aumento = salarioAntigo * percentualAumento;
  double novoSalario = salarioAntigo + aumento;

  print('\n--- Folha de Pagamento ---');
  print('Salário Antigo: R\$ ${salarioAntigo.toStringAsFixed(2)}');
  print('Novo Salário: R\$ ${novoSalario.toStringAsFixed(2)}');
  print('Diferença (aumento): R\$ ${aumento.toStringAsFixed(2)}');
}