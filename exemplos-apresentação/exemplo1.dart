int dividir(int a, int b) {
  if (b == 0) {
    throw Exception("Divisão por zero não é permitida!");
  }
  return a ~/ b;
}

void main() {
  try {
    int resultado = dividir(10, 2);
    print("Resultado: $resultado");
  } catch (e) {
    print("Ocorreu uma exceção: $e");
  } finally {
    print("Execução finalizada.");
  }
}