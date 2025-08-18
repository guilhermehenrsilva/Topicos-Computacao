import 'dart:io';
bool ehBissexto(int ano) {
  if ((ano % 400 == 0) || (ano % 4 == 0 && ano % 100 != 0)) {
    return true;
  } else {
    return false;
  }
}

void main() {
  print('Digite um ano para verificar se é bissexto:');
  int ano = int.parse(stdin.readLineSync()!);

  if (ehBissexto(ano)) {
    print('O ano $ano é bissexto.');
  } else {
    print('O ano $ano não é bissexto.');
  }
}