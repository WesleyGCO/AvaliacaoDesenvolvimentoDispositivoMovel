import 'dart:io';

void main(List<String> arguments) {
  print("Exercício 2 de fixação\n\n");

  int? opcaoMenuPrincipal;
  int? opcaoMenuSecundario;
  String? login;
  String? senha;
  int? num_pedido;
  double? precoProdutos;
  double? precoFrete;

  while (true) {
    menuPrincipal();
    opcaoMenuPrincipal = int.parse(stdin.readLineSync()!);
    if (opcaoMenuPrincipal == 1) {
      menuLoginSenha();
      opcaoMenuSecundario = int.parse(stdin.readLineSync()!);

      if (opcaoMenuSecundario == 1) {
        print("Informe o seu login: ");
        login = stdin.readLineSync()!;

        print("Informe sua senha: ");
        senha = stdin.readLineSync()!;

        print(verificarLoginSenhaUm(login, senha));
      } else if (opcaoMenuSecundario == 2) {
        print(verificarLoginSenhaDois());
      } else if (opcaoMenuSecundario == 3) {
        print("Informe o seu login: ");
        login = stdin.readLineSync()!;

        print("Informe sua senha: ");
        senha = stdin.readLineSync()!;

        verificarLoginSenhaTres(login, senha);
      } else if (opcaoMenuSecundario == 4) {
      } else {
        print("Opção inválida! Tente novamente!");
      }
    } else if (opcaoMenuPrincipal == 2) {
      menuPedidoPrecoFinal();

      opcaoMenuSecundario = int.parse(stdin.readLineSync()!);

      if (opcaoMenuSecundario == 1) {
      } else if (opcaoMenuSecundario == 2) {
      } else if (opcaoMenuSecundario == 3) {
      } else if (opcaoMenuSecundario == 4) {
      } else {
        print("Opção inválida! Tente novamente!");
      }
    } else if (opcaoMenuPrincipal == 3) {
      print("Você selecionar, até mais!");
      break;
    } else {
      print("Opção inválida! Tente novamente!");
    }
  }

  //if
}

//#region MENUS

// Menu principal com as opções
void menuPrincipal() {
  print('''Escolha a opção desejada:
  1 - Verificar login e senha
  2 - Calcular o valor final do pedido
  3 - Sair
  ''');
}

// Menu login e senha com as opções;
void menuLoginSenha() {
  print('''Escolha a opção desejada para verificar o login e senha:
    1 - Função com retorno e com parâmetro
    2 - Função com retorno e sem parâmetro
    3 - Função sem retorno e com parâmetro
    4 - Função sem retorno e sem parâmetro
    ''');
}

// Menu pedido e  com as opções;
void menuPedidoPrecoFinal() {
  print('''Escolha a opção desejada para calcular o valor final do pedido:
    1 - Função com retorno e com parâmetro
    2 - Função com retorno e sem parâmetro
    3 - Função sem retorno e com parâmetro
    4 - Função sem retorno e sem parâmetro
    ''');
}

//#endregion MENUS

//#region Funções Login e Senha

//Função com retorno e com parâmetro
String verificarLoginSenhaUm(String login, String senha) {
  if (login == "admin") {
    if (senha == "1234567890") {
      return "O usuário $login existe no sistema! Mas infelizmente pode fazer nada  :(";
    } else {
      return "Usuário e/ou senha incorretos!";
    }
  } else {
    return "Esse usuário não existe!";
  }
}

// Função com retorno e sem parâmetro
String verificarLoginSenhaDois() {
  String? login;
  String? senha;

  print("Informe o seu login: ");
  login = stdin.readLineSync()!;

  print("Informe sua senha: ");
  senha = stdin.readLineSync()!;

  if (login == "admin") {
    if (senha == "1234567890") {
      return "O usuário $login existe no sistema! Mas infelizmente pode fazer nada  :(";
    } else {
      return "Usuário e/ou senha incorretos!";
    }
  } else {
    return "Esse usuário não existe!";
  }
}

// Função sem retorno e com parâmetro
void verificarLoginSenhaTres(String login, String senha) {
  String? verificacao;

  if (login == "admin") {
    if (senha == "1234567890") {
      verificacao =
          "O usuário $login existe no sistema! Mas infelizmente pode fazer nada  :(";
    } else {
      verificacao = "Usuário e/ou senha incorretos!";
    }
  } else {
    verificacao = "Esse usuário não existe!";
  }

  print(verificacao);
}

// Função sem retorno e sem parâmetro
void verificarLoginSenhaQuatro() {
  String? login;
  String? senha;
  String? verificacao;

  print("Informe o seu login: ");
  login = stdin.readLineSync()!;

  print("Informe sua senha: ");
  senha = stdin.readLineSync()!;

  if (login == "admin") {
    if (senha == "1234567890") {
      verificacao =
          "O usuário $login existe no sistema! Mas infelizmente pode fazer nada  :(";
    } else {
      verificacao = "Usuário e/ou senha incorretos!";
    }
  } else {
    verificacao = "Esse usuário não existe!";
  }

  print(verificacao);
}

//#endregion Funções Login e Senha