import 'package:aula_poo/classes_atividade/aluno_novo.dart';
import 'package:aula_poo/classes_atividade/professor_novo.dart';

void main(List<String> arguments) {
  /*
  Atividade 01

  - Criar professor com 2 atributos
  Criado classe no arquivo professor_novo
  - Alterar atributos do professor para não nulos
  Alterado
  - Alterar para construtores nomeados
  Alterado
  - Criar um objeto aluno no print
  - Alterar professor para ter atributos nulos e não nulos
  Alterado
  - Criar um objeto professor com função nomeada
  - Criar um objeto professor com função anônima
  - Criar um objeto professor com arrow function
  - Criar um objeto professor com arrow function no print
  */

  //- Criar um objeto aluno no print
  print("${Aluno1(RA: 33333, nome: "Cristo", CPF: "083.435.435-99")}");

  //- Criar um objeto professor com função nomeada
  print("${Professor(SIAPE: 3424, nome: "Jose", funcaoTeste: funcaoNomeada)}");

  //- Criar um objeto professor com função anônima
  var professor1 = Professor(
      SIAPE: 80898,
      nome: "João",
      funcaoTeste: () {
        print("Função anônima");
      });

  //- Criar um objeto professor com arrow function
  var professor2 = Professor(
      SIAPE: 43434,
      nome: "Joaquim",
      funcaoTeste: () => print("Função arrow function"));

  //- Criar um objeto professor com arrow function no print
  print(
      "${Professor(SIAPE: 3424, nome: "Jose", funcaoTeste: () => print("Função arrow function no print"))}");
}

void funcaoNomeada() {
  print("Função nomeada");
}
