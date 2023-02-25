import 'dart:io';

void main(List<String> arguments) {
  print("Sintaxe Funções");

  //verificarAprovacao();

  //var saidaDois = verificarAprovacaoDois();
  //print(saidaDois);

  var nota1 = 60.0;
  var nota2 = 59.9;

  //verificarAprovacaoTres(nota1, nota2);

  //var saidaQuatro = verificarAprovacaoQuatro(nota1, nota2);
  //print(saidaQuatro);
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

// Função com retorno e sem parametro
String verificarAprovacaoDois() {
  print("A média para aprovação é 60!");

  double nota1, nota2, media;

  print("Informe nota 1:");
  nota1 = double.parse(stdin.readLineSync()!);

  print("Informe nota 2:");
  nota2 = double.parse(stdin.readLineSync()!);

  media = (nota1 + nota2) / 2;

  if (media >= 60) {
    return "Aprovado";
  } else {
    return "Reprovado";
  }
}

// Função sem retorno e com parametro
void verificarAprovacaoTres(double nota1, double nota2) {
  print("A média para aprovação é 60!");

  double media = (nota1 + nota2) / 2;

  print((media >= 60) ? "Aprovado" : "Reprovado");
}

// Função com retorno e com parametro
String verificarAprovacaoQuatro(double nota1, double nota2) {
  print("A média para aprovação é 60!");

  double media = (nota1 + nota2) / 2;

  if (media >= 60) {
    return "Aprovado";
  } else {
    return "Reprovado";
  }
}
