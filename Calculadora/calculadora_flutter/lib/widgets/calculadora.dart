// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
  int num1 = 0;
  int num2 = 0;
  int resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      body: Center(
        child: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextField(
                decoration: InputDecoration(
                    label: Text("Primeiro número inteiro"),
                    hintText: "Primeiro número inteiro para a operação"),
                onChanged: (String num1Digitado) {
                  num1 = int.parse(num1Digitado);
                },
              ),
              TextField(
                decoration: InputDecoration(
                    label: Text("Segundo número inteiro"),
                    hintText: "Segundo número inteiro para a operação"),
                onChanged: (String num2Digitado) {
                  num2 = int.parse(num2Digitado);
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    resultado = num1 + num2;

                    showDialog(
                        // Tela com o conteúdo digitado
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Resultado"),
                            content: Text(resultado.toString()),
                          );
                        });
                  },
                  child: Text("Soma")),
              ElevatedButton(
                  onPressed: () {
                    resultado = num1 - num2;

                    showDialog(
                        // Tela com o conteúdo digitado
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Resultado"),
                            content: Text(resultado.toString()),
                          );
                        });
                  },
                  child: Text("Diferença")),
            ],
          ),
        ),
      ),
    );
  }
}
