import 'package:flutter/material.dart';
import 'package:pet_adote/screens/screen_anuncios.dart';
import 'package:pet_adote/screens/screen_cadastro.dart';
import 'package:pet_adote/screens/screen_cadastro_end.dart';
import 'package:pet_adote/screens/screen_cadastro_pet.dart';
import 'package:pet_adote/screens/screen_login.dart';
import 'package:pet_adote/screens/screen_recuperar_senha.dart';
import 'package:pet_adote/screens/screen_splash_fin_cadastro.dart';
import 'package:pet_adote/screens/screen_splash_inicial.dart';
import 'package:pet_adote/screens/screen_splash_recuperar_senha.dart';
import 'package:pet_adote/screens/screen_termos_de_uso.dart';
import 'package:pet_adote/screens/screens_splash_adocao.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashHome(),
        '/login': (context) => Login(),
        '/cadastro': (context) => Cadastro(),
        '/cadastro2': (context) => Cadastro_end(),
        '/splashcadastro': (context) => Splash_Cadastro(),
        '/recuperarsenha': (context) => Recuperar_senha(),
        '/splashrecuperar': (context) => Splash_recupera_senha(),
        '/homescreen': (context) => HomeScreen(),
        '/cadastropet': (context) => Cadastropet(),
        '/splashadocao': (context) => Splash_adocao(),
        '/termouso': (context) => Termo_uso(),
      },
    ),
  );
}

//class MyApp extends StatelessWidget {
 // @override
 // Widget build(BuildContext context) {
  //  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  //  return MaterialApp(
   //   home: SplashHome(),
 //   );
 // }
//}
