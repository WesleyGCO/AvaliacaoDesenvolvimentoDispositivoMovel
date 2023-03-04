import 'package:atividade_03_03/parametros.dart' as atividade_03_03;

void main(List<String> arguments) {
  print("Tópico: parâmetros posicionais, nomeados e opcionais!");

  //----------------------------- Parâmetros posicionais ---------------------------------------------

  /*Úteis quando o parâmetro tem um valor padrão
  Sempre devo informar o parâmetro opcional dentro de chaves [] e depois dos parâmetros obrigatórios.
  Se parâmetros posicionais opcionais forem definidos, as chamadas de função poderão especificar um número variável
  de argumentos.
  Podemos informar vários parâmetros posicionais opcionais em uma função desde que todos eles sejam ajustados para
  serem informados depois dos parâmetros obrigatórios
  */

  //Exemplo de função com parâmetros posicionais
  String verificarAprovacaoComMedia(double nota1, double nota2,
      [double mediaAprovacao = 6]) {
    /*No caso dessa função, o valor mediaAprovacao tem um valor padrão de 6 colocado dentro de [];
    Ou seja, a chamada dessa função pode definir o parâmetro mediaAprovacao ou não, pois é opcional;
    Caso não defina, o valor da mediaAprovacao será o que foi denifido na função.
    */
    double media = (nota1 + nota2) / 2;

    if (media >= mediaAprovacao) {
      return "Aprovado";
    } else {
      return "Reprovado";
    }
  }

  //A chamada da função acima pode ser de dois jeitos:

  //Primeiro jeito
  verificarAprovacaoComMedia(3, 3);
  // Veja que não foi definido o parâmetro mediaAprovacao, logo a função tratará esse parâmetro como o valor padrão

  //Segundo jeito
  verificarAprovacaoComMedia(3, 3, 7);
  /* Veja que definimos o parâmetro mediaAprovacao, logo a função tratará esse parâmetro com o valor informado
  pela chamada*/

  // FORMA ERRADA DE DEFINIR UMA FUNÇÃO COM PARÂMETRO POSICIONAL
  /*String verificarAprovacaoComMediaDefinidaErrada(double nota1, [mediaAprovacao = 7], double nota2){
    double media = (nota1 + nota2) / 2;

    if (media >= mediaAprovacao){
      return "Aprovado";
    } else{
      return "Reprovado";
    }
  }
  */

  //Não conseguimos nem rodar a função, o próprio Dart já acusa erro dizendo que o elemento esperado era o ) e não ;

  //----------------------------- Parâmetros nomeados ---------------------------------------------

  /* São parâmetros em que há a descrição, melhorando a leitura e permitindo a definição dos parâmetros em ordem aleatória
  Nesse caso, informamos os parâmetros dentro de chaves {}, que se diferem dos parâmetros posicionais, pois seus nomes
  deve ser especificados para serem passados.
  Os nomes são especificados usando a sintaxe 'parametro: value'
  
  Os parâmetros nomeados são opcionais, ou seja, é necessário definir o valor padrão;
  Para torná-los obrigatórios, utilizamos a palavra chave "required"
  */

  //Exemplo função com parâmetros nomeados
  String verificarAprovacaoComParametroNomeadoUm(
      {required double nota1, required double nota2, double media = 6}) {
    double nota = (nota1 + nota2) / 2;

    if (nota >= media) {
      return "Aprovado";
    } else {
      return "Reprovado";
    }
  }

  /* Veja a função acima:
    Nós declaramos dois parâmetros como obrigatórios, logo a chamada deve ficar das seguintes formas:
  */

  verificarAprovacaoComParametroNomeadoUm(nota1: 5, nota2: 5);
  // Definindo o nome do parâmetro e o seu valor;
  // Tivemos que informar, no mínimo, os parâmetros obrigatórios: nota1 e nota2
  // Não informamos o valor da media, logo a função tratará o parâmetro com o valor padrão

  verificarAprovacaoComParametroNomeadoUm(nota1: 5, nota2: 6, media: 7);
  // Definindo o nome do parâmetro e o seu valor;
  // Informamos os parâmetros obrigatórios e opcionais: nota1, nota2 e media
  // Informamos o valor da media, logo a função tratará o parâmetro com o valor informado (7)

  verificarAprovacaoComParametroNomeadoUm(nota2: 4, media: 8, nota1: 6);
  // Definindo o nome do parâmetro e o seu valor;
  // Informamos os parâmetros obrigatórios e opcionais de forma aleatória
  // Informamos o valor da media, logo a função tratará o parâmetro com o valor informado (8)
}
