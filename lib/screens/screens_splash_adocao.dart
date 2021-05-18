import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Splash_adocao extends StatefulWidget {
  @override
  _Splash_adocaoState createState() => _Splash_adocaoState();
}

class _Splash_adocaoState extends State<Splash_adocao> {
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
                  image: AssetImage("assets/img/pata_termos_de_uso.png"),
                  fit: BoxFit.contain,
                )),
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Center(
              child: Text(
                "Seu Pet foi colocado\n"
                "para adoção\n",
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
      Navigator.pushNamedAndRemoveUntil(
          context, '/homescreen', (route) => false);
    });
  }
}
