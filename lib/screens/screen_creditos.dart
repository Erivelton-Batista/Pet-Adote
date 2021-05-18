import 'package:flutter/material.dart';

class Creditos extends StatefulWidget {
  @override
  _CreditosState createState() => _CreditosState();
}

class _CreditosState extends State<Creditos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //barra da tela cadastro
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Créditos',
          style: TextStyle(
            fontFamily: 'KGred',
            fontSize: 30,
            color: Colors.orangeAccent,
          ),
        ),
        backgroundColor: Color(0xff2be0b5),
        toolbarHeight: 70,
      ),
    );
  }
}
