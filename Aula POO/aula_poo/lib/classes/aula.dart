import 'package:aula_poo/classes/aluno.dart';
import 'package:aula_poo/classes/aluno3.dart';
import 'package:aula_poo/classes/aluno4.dart';
import 'package:aula_poo/classes/professor.dart';

void main(List<String> arguments) {
  print("Aluno\n");

  var aluno = Aluno(); // "new" não precisa em dart

  aluno.nome = "Wesley";
  aluno.RA = 999999999;
  aluno.CPF = "084.084.084-08";

  print("Nome: ${aluno.nome}\nRA: ${aluno.RA}\nCPF: ${aluno.CPF}\n");

  print("Professor");
  var professor = Professor(); // "new" não precisa em dart

  professor.nome = "Joaquim";
  professor.SIAPE = 3838038083;
  professor.CPF = "999.999.999-99";

  print(
      "Nome: ${professor.nome}\nSIAPE: ${professor.SIAPE}\nCPF: ${professor.CPF}");

  print("${Aluno3(RA: 4444, nome: "Joaquim", CPF: "34343434")}");

  var aluno4 = Aluno4(
      RA: 33,
      nome: "Jesus Cristo",
      CPF: "000.000.000-00",
      minhaFuncao: minhaFuncao);
}

void minhaFuncao() {
  print("buscar livro");
}
