// ignore_for_file: prefer_interpolation_to_compose_strings
import 'dart:io';

void main(List<String> arguments) {
  print('variáveis de inferencia');

  /* Exercícios de fixação

  // Deve ser colocado ? que define que a variável pode ser nula
  String? nome;

  print('Informe o seu nome');
  nome = stdin.readLineSync();

  //Outra jeito de tratar
  String nome = '';

  print('Informe o seu nome:');
  String? entrada = stdin
      .readLineSync(); /*Se colocar ! no final do método, informa que o usuário colocar o valor nulo, o método irá mudar para um valor não nulo. Com isso, a programação assume o risco*/
  //Faz o tratamento do dado de entrada
  if (entrada != null) {
    nome = entrada;
  }

  var idade = 19; //quando tem atribuição, utiliza essa forma
  //int idade --> não pode; utiliza essa forma quando não tem atribuição, logo para evitar erros futuros
  double peso = 80.5;
  String nome_aluno = 'Wesley';
  String sobrenome_aluno = 'Castilho';
  bool eProgramador = true;

  */

  /*
  Atividade 03 - Ao invés de atribuir valores solicite dados

  String para int -> int.parse
  String para double -> double.parse
  int para String -> variavel.toString()
  */

  print("Olá! Seja bem vindo!\n\n");

  String? nome;
  String? sobrenome;
  int? idade;
  double? peso;
  double? altura;

  print("Informe o seu primeiro nome: ");
  nome = stdin.readLineSync()!;

  print("Informe o seu sobrenome: ");
  sobrenome = stdin.readLineSync()!;

  print("Informe a sua idade: ");
  idade = int.parse(stdin.readLineSync()!);

  print("Informe o seu peso (Ex: 88.8): ");
  peso = double.parse(stdin.readLineSync()!);

  print("Informe a sua altura (Ex: 1.88): ");
  altura = double.parse(stdin.readLineSync()!);

  print(
      "O seu nome completo é $nome $sobrenome.\nA sua idade é $idade.\nO seu peso é $peso KG.\nE a sua altura é $altura m.");
}
