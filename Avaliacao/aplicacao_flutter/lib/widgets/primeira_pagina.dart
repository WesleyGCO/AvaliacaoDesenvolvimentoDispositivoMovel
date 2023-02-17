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
          //Todos os componentes definidos no array, ficará em coluna
          children: [
            // ignore: prefer_const_constructors
            TextField(
              cursorColor: Colors.green, // Define a cor do cursor
              maxLength:
                  250, // Define a quantidade de caracteres que podem ser digitados
              decoration: InputDecoration(
                  label: Text("Nome"), // Define o nome do campo a ser digitado
                  hintText:
                      'Informe seu nome'), // Define a dica do que é para colocar no campo
            ),
            ElevatedButton(
                onPressed: () {}, //Faz nada, se declarar assim
                child: Text("Ok"))
          ],
        ),
      ),
    );
  }

  // tentar rodar o aplicativo chamando este widget
}
