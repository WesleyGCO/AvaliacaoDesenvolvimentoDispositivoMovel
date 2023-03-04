import 'dart:io';

void main(List<String> arguments) {
  print("Tópico: funções anônimas!");

  /*
  É uma função que não possui um nome explícito e pode ser definida no local onde é usada.
  É definida usando a palavra-chave `() { }` ou a sintaxe abreviada `() =>`.
  Essa função tem seu uso quando é algo simples e específico no local em que é necessária, 
  logo o sistema não precisa definir uma função separada com um nome exclusivo sendo que você
  resolver no mesmo ponto sem problemas.
  É necessário ter uma função com o parâmetro do tipo função.
  */

  print('''
  Digite a operação deseja entre dois números:\n

  1) Aprovação pela média
  2) Aprovação pela maior nota
  3) Aprovação pela menor nota
  ''');

  //Interações do usuário
  int escolha = int.parse(stdin.readLineSync()!);
  print('Informe a primeira nota:');
  double n1 = double.parse(stdin.readLineSync()!);
  print('Informe a segunda nota:');
  double n2 = double.parse(stdin.readLineSync()!);
  bool aprovado;

  if (escolha == 1) {
    aprovado = verificarAprovacao(n1, n2, calcularMedia);
  } else if (escolha == 2) {
    // Reescrevendo a função verificarMaiorNota em um função anônima - somente para comparação
    aprovado = verificarAprovacao(n1, n2, (double nota1, double nota2) {
      double maior = nota1;
      if (nota2 > nota1) maior = nota2;
      return maior;
    });
  } else {
    aprovado = verificarAprovacao(n1, n2, calcularMenorNota);
  }
  print(aprovado ? 'aprovado' : 'reprovado');
}

bool verificarAprovacao(double nota1, double nota2, Function caclularNota) {
  double nota = caclularNota(nota1, nota2);
  return (nota >= 6);
}

double calcularMedia(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  return media;
}

double calcularMaiorNota(double nota1, double nota2) {
  double maior = nota1;
  if (nota2 > nota1) maior = nota2;
  return maior;
}

double calcularMenorNota(double nota1, double nota2) {
  double menor = nota1;
  if (nota2 < nota1) menor = nota2;
  return menor;
}
