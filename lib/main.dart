import 'package:flutter/material.dart';
import 'package:pet_adote/screens/screen_anuncios.dart';
import 'screens/screen_cadastro.dart';
import 'screens/screen_cadastro_end.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
