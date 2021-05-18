import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:pet_adote/screens/screen_login.dart';

class Splash_Cadastro extends StatefulWidget {
  @override
  _Splash_CadastroState createState() => _Splash_CadastroState();
}

class _Splash_CadastroState extends State<Splash_Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 100)),
            //foto do icone
            Center(
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/img/cão_caixa.png"),
                  fit: BoxFit.contain,
                )),
              ),
            ),
            Center(
              child: Text(
                "PARABÉNS!\n"
                "agora você faz parte\n"
                "da família Pet adote.",
                style: TextStyle(
                  fontFamily: 'KGred',
                  fontSize: 20,
                  color: Colors.orangeAccent,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //loading do splash
            Center(
              child: Container(
                width: 200,
                height: 200,
                child: FlareActor(
                  "assets/img/loading.flr",
                  animation: "loading",
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        )
      ]),
    );
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5)).then((_) {
      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
    });
  }
}
