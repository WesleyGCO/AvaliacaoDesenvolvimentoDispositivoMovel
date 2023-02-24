// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:fundamentos_dart/fundamentos_dart.dart' as fundamentos_dart;

void main(List<String> arguments) {
  print('fundamentos de variáveis');
  int idade = 19;
  double peso = 80.5;
  String nome = 'Wesley';
  String sobrenome = 'Castilho';
  bool eProgramador = true;

  print(idade);
  //Concatenação
  print(nome + ' ' + sobrenome);

  /*
  INSERT INTO pessoa (nome, sobrenome) VALUES ('Wesley', 'Castilho')
  */

  // Mostrar um comando SQL no print
  print("INSERT INTO pessoa (nome, sobrenome) VALUES ('" +
      nome +
      "','" +
      sobrenome +
      "')");
  //para reconhecer que é uma variável dentro da string, colocar o símbolo $
  print("INSERT INTO pessoa (nome, sobrenome) VALUES ('$nome', '$sobrenome')");

  //pode ser usado assim também
  String teste = 'teste ${5 > 0}';
  print(teste); //Se 5 for maior que 0, retornará true

  // $ (dólar) faz a leitura do campo ou instrução informada
  String nomeCompleto = '$nome $sobrenome';

  //uma forma de demonstrar informações a cada jeito
  print('\nlinha1' + '\nlinha2' + '\nlinha3');

  ///segunda forma de demonstrar informações a cada jeito
  print('''
    linha1
    linha2
    linha3
  ''');
}
