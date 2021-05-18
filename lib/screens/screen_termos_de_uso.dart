import 'package:flutter/material.dart';

class Termo_uso extends StatefulWidget {
  @override
  _Termo_usoState createState() => _Termo_usoState();
}

class _Termo_usoState extends State<Termo_uso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //barra da tela cadastro
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Termos de Uso',
          style: TextStyle(
            fontFamily: 'KGred',
            fontSize: 40,
            color: Colors.orangeAccent,
          ),
        ),
        backgroundColor: Color(0xff2be0b5),
        toolbarHeight: 70,
      ),

      body: Column(
        children: <Widget>[RichText(text: TextSpan(text: ''))],
      ),
    );
  }
}
