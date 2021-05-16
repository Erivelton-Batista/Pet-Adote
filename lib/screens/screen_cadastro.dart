import 'package:flutter/material.dart';

//Screen da tela de cadastro  de numero 7 e 8 do prototipo

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Cadastro',
          style: TextStyle(
              fontFamily: 'KGred', fontSize: 40, fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.greenAccent,
        toolbarHeight: 70,
      ),
    );
  }
}
