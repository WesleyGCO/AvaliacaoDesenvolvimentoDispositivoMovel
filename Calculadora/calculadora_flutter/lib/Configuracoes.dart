import 'package:calculadora_flutter/widgets/calculadora.dart';
import 'package:flutter/material.dart';

class Configuracoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aula sobre Flutter",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Calculadora(),
    );
  }
}
