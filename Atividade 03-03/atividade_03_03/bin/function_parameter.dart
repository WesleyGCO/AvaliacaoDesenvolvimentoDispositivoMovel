import 'dart:io';

void main(List<String> arguments) {
  print("Tópico: funciotn parameter (FP)");

  /*
  Esse tipo de função tem por objetivo organizar o código em situações que sabemos o que é preciso 
  fazer (objetivo) mas não sabemos como (ação/implementação).

  Ela pode ser aplicada, por exemplo, em implementação de APIs. odemos usar parâmetros de função
  para permitir que os usuários da API forneçam seu próprio código personalizado para ser executado
  em determinados pontos da execução.
  */

  //Por exemplo: podemos ter um menu para escolher a operação matemática

  print('''
  Digite a operação deseja entre dois números:\n

  1) Soma
  2) Subtração
  3) Multiplicação
  4) Divisão
  ''');

  //Interações do usuário
  int escolha = int.parse(stdin.readLineSync()!);
  print("Informe o primeiro número:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Informe o primeiro número:");
  double num2 = double.parse(stdin.readLineSync()!);

  double resultado;

  //Define a operação que o usuário desejou
  if (escolha == 1) {
    resultado = calcularOperacao(num1, num2, somarNumeros);
  } else if (escolha == 2) {
    resultado = calcularOperacao(num1, num2, subtrairNumeros);
  } else if (escolha == 3) {
    resultado = calcularOperacao(num1, num2, multiplicarNumeros);
  } else {
    resultado = calcularOperacao(num1, num2, dividirNumeros);
  }
}

// Definindo uma função que tem um parametro do tipo função
double calcularOperacao(double num1, double num2, Function definirResultado) {
  double valor = definirResultado(num1, num2);
  return valor;
}

//Soma os números informados
double somarNumeros(double num1, double num2) {
  double resultado = num1 + num2;
  return resultado;
}

//Subtrair os números informados
double subtrairNumeros(double num1, double num2) {
  double resultado = num1 - num2;
  return resultado;
}

//Miltiplicar os números informados
double multiplicarNumeros(double num1, double num2) {
  double resultado = num1 * num2;
  return resultado;
}

//Dividir os números informados
double dividirNumeros(double num1, double num2) {
  double resultado = num1 / num2;
  return resultado;
}
