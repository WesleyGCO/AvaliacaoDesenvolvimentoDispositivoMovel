import 'package:aula_poo/classes/aluno.dart';

void main(List<String> arguments) {
  print("aula");

  var aluno = Aluno(); // "new" não precisa em flutter

  aluno.nome = "Wesley";
  aluno.RA = 999999999;
  aluno.CPF = "084.084.084-08";

  print("Nome: ${aluno.nome}\nRA: ${aluno.RA}\nCPF: ${aluno.CPF}");
}
