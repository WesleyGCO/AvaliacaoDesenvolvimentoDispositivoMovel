// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PrimeiraPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String nome = "";
    // Quando a variável já tem conteúdo, defina ele como var nome_variavel = 'nome'
    // Quando a variável não tiver, faça como o exemplo acima

    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira página'),
      ),
      body: Center(
        //Deixar os componentes centralizados
        child: Column(
          //Todos os componentes definidos no array, ficarão em coluna
          children: [
            TextField(
              cursorColor: Colors.green, // Define a cor do cursor
              maxLength: 250, // Define a qtde de caracteres a serem digitados
              decoration: InputDecoration(
                  label: Text("Nome"), // Define o nome do campo a ser digitado
                  hintText: 'Informe seu nome'), // Define uma dica para o campo
              onChanged: (String valorDigitado) {
                nome = valorDigitado;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      // Tela com o conteúdo digitado
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Nome"),
                          content: Text(nome),
                        );
                      });
                },
                child: Text("Ok")) // Insere o nome do botão
          ],
        ),
      ),
    );
  }

  // Tentar rodar o aplicativo chamando este widget
}
