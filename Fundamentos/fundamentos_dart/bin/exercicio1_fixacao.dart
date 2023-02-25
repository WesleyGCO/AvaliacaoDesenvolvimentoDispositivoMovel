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

String calcularSalario(double valorSalario, double valorDesconto) {
  if (valorDesconto > valorSalario) {
    return "O valor do desconto é maior do que o valor do salário!";
  } else {
    double saldoLiquidoSalario = valorSalario - valorDesconto;
    return "O salário líquido é $saldoLiquidoSalario reais";
  }
}
