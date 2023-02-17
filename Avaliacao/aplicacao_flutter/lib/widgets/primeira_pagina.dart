// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PrimeiraPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  hintText: 'Informe seu nome'),
              onChanged: (valorDigitado) {
                print(valorDigitado);
              },
            ),
            ElevatedButton(
                onPressed: () {
                  //Função anônima: () {}
                  print("teste"); // Imprime no console
                },
                child: Text("Ok"))
          ],
        ),
      ),
    );
  }

  // tentar rodar o aplicativo chamando este widget
}
