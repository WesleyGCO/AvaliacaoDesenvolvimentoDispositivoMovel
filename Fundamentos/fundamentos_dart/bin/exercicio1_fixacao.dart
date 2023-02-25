import 'dart:io';

void main(List<String> arguments) {
  print("Exercício 1 de fixação\n\n");

  double? valorSalario;
  double? valorDesconto;

  print("Calcule o seu salário");

  print("Informe o valor do salário:");
  valorSalario = double.parse(stdin.readLineSync()!);

  print("Informe o valor do desconto:");
  valorDesconto = double.parse(stdin.readLineSync()!);

  print(calcularSalario(valorSalario, valorDesconto));
}

// Função com retorno e com parametro
String calcularSalario(double valorSalario, double valorDesconto) {
  if (valorDesconto > valorSalario) {
    return "O valor do desconto é maior do que o valor do salário!";
  } else {
    double saldoLiquidoSalario = valorSalario - valorDesconto;
    return "O salário líquido é $saldoLiquidoSalario reais";
  }
}

// Função sem retorno e sem parametro
void calcularSalarioDois() {
  double? valorSalario;
  double? valorDesconto;
  String resultado;

  print("Calcule o seu salário");

  print("Informe o valor do salário:");
  valorSalario = double.parse(stdin.readLineSync()!);

  print("Informe o valor do desconto:");
  valorDesconto = double.parse(stdin.readLineSync()!);

  if (valorDesconto > valorSalario) {
    resultado = "O valor do desconto é maior do que o valor do salário!";
  } else {
    double saldoLiquidoSalario = valorSalario - valorDesconto;
    resultado = "O salário líquido é $saldoLiquidoSalario reais";
  }

  print(resultado);
}
