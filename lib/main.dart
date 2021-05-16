import 'package:flutter/material.dart';
import 'screens/screen_cadastro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Cadastro(),
    );
  }
}
