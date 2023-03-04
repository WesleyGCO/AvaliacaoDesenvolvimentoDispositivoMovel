import 'dart:math';

void main(List<String> arguments) {
  print("Tópico: funções anônimas!");

  /*
  É uma função que não possui um nome explícito e pode ser definida no local onde é usada.
  É definida usando a palavra-chave `() { }` ou a sintaxe abreviada `() =>`.
  Essa função tem seu uso quando é algo simples e específico no local em que é necessária, 
  logo o sistema não precisa definir uma função separada com um nome exclusivo sendo que você
  resolver no mesmo ponto sem problemas.
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
