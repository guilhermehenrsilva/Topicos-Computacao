// 1. Crie a exceção para falha de autenticação
class AutenticacaoFalhaException implements Exception {
  final String mensagem;
  AutenticacaoFalhaException([this.mensagem = "Credenciais inválidas."]);
  
  @override
  String toString() => 'AutenticacaoFalhaException: $mensagem';
}

// 2. Defina a função que simula a autenticação
void autenticarUsuario(String usuario, String senha) {
  const usuarioValido = "admin";
  const senhaValida = "12345";

  if (usuario != usuarioValido || senha != senhaValida) {
    throw AutenticacaoFalhaException("Nome de usuário ou senha incorretos.");
  }

  print("Login bem-sucedido!");
}

// 3. Use try-catch para tratar a autenticação
void main() {
  // Tentativa de login com credenciais incorretas
  try {
    autenticarUsuario("admin_errado", "senha_incorreta");
  } on AutenticacaoFalhaException catch (e) {
    print("Ocorreu um erro de autenticação: ${e}");
  }

  print("---"); // Separador para o próximo exemplo

  // Tentativa de login com sucesso
  try {
    autenticarUsuario("admin", "12345");
  } on AutenticacaoFalhaException catch (e) {
    print("Este bloco não será executado. Erro: ${e}");
  }
}