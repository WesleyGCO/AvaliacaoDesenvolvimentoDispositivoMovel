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

  /*
  Atividade 01 - Defina váriaveis de um produto (com diversos tipos) e imprima com as devidas descrições
  */

  print("Carros");

  int ano_celta = 2003;
  String nome_celta = 'Celta';
  String combustivel_celta = 'Gasolina';
  double peso_celta = 890.5;
  double preco_celta = 15000;

  int ano_hilux = 2018;
  String nome_hilux = 'Hilux';
  String combustivel_hilux = 'Diesel';
  double peso_hilux = 2090.9;
  double preco_hilux = 167999;

  print(
      "O automóvel $nome_celta, ano $ano_celta, utiliza o combustível $combustivel_celta, tem um peso de $peso_celta KG e custa $preco_celta mil reais.");
  print(
      "O automóvel $nome_hilux, ano $ano_hilux, utiliza o combustível $combustivel_hilux, tem um peso de $peso_hilux KG e custa $preco_hilux mil reais.");

  /*
  Atividade 02 - Conforme o seu projeto particular, definar as variáveis de um modelo e imprima na tela
  */

  int num_pedido = 55555;
  String nome_produto = 'Bolo de chocolate';
  double preco_produto = 21;
  double valor_entrega = 7.50;

  print(
      "O pedido $num_pedido tem o produto $nome_produto, sendo o seu preço de $preco_produto reais e a entrega no valor de $valor_entrega reais.");
}
