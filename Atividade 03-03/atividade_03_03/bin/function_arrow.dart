void main(List<String> arguments) {
  print("Tópico: funções de setas (AR)!");

  /*
  É uma função anônima com um único comando;
  É chamada de arrow porque usa uma seta (=>) para separar os parâmetros e a expressão de retorno.
  São úteis para escrever funções simples e concisas.
  Podem ser usadas em muitos dos mesmos conceitas das funções anônimas.
  */

  //Exemplo
  var listaNumeros = [23, 233, 45, 56, 77, 88];

  // Pode ser usada com a função ForEach
  listaNumeros.forEach((numero) {
    print(numero * numero);
  });

  // Pode ser usada com atribuição a uma variável
  var soma = (int a, int b, int c, int d) => a + b + c + d;
  print(soma(1, 5, 4, 45)); // Saída: 55
}
