import 'dart:io';

void main(List<String> arguments) {
  print("Sintaxe Funções");

  verificarAprovacao();
}

//Função sem retorno e sem parametro
void verificarAprovacao() {
  print("A média para aprovação é 60!");

  double nota1, nota2, media;
  String resultado;

  print("Informe nota 1:");
  nota1 = double.parse(stdin.readLineSync()!);

  print("Informe nota 2:");
  nota2 = double.parse(stdin.readLineSync()!);

  media = (nota1 + nota2) / 2;

  /*
  if (media >= 60) {
    resultado = "Aprovado";
  } else {
    resultado = "Reprovado";
  }

  print(resultado);
  */

  print((media >= 60) ? "Aprovado" : "Reprovado");
}

// Função sem retorno e com parametro
void verificarAprovacaoDois() {
  print("A média para aprovação é 60!");

  double nota1, nota2, media;

  print("Informe nota 1:");
  nota1 = double.parse(stdin.readLineSync()!);

  print("Informe nota 2:");
  nota2 = double.parse(stdin.readLineSync()!);

  media = (nota1 + nota2) / 2;

  if (media >= 60) {
    return print("Aprovado");
  } else {
    return print("Reprovado");
  }
}


// Função com retorno e sem parametro


// Função com retorno e com parametro
