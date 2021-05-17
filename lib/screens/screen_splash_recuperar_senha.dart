import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:pet_adote/screens/screen_login.dart';

class Splash_recupera_senha extends StatefulWidget {
  @override
  _Splash_recupera_senhaState createState() => _Splash_recupera_senhaState();
}

class _Splash_recupera_senhaState extends State<Splash_recupera_senha> {
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
                  image: AssetImage("assets/img/recuperar_senha.png"),
                  fit: BoxFit.contain,
                )),
              ),
            ),
            Center(
              child: Text(
                "Sua Senha foi enviada\n"
                "para o seu e-mail\n",
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
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Login()));
    });
  }
}
