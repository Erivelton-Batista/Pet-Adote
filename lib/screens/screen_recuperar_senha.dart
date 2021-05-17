import 'package:flutter/material.dart';
import 'package:pet_adote/screens/screen_login.dart';
import 'package:pet_adote/screens/screen_splash_recuperar_senha.dart';

class Recuperar_senha extends StatefulWidget {
  @override
  _Recuperar_senhaState createState() => _Recuperar_senhaState();
}

class _Recuperar_senhaState extends State<Recuperar_senha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar com recuperar senha
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Recuperar Senha',
          style: TextStyle(
            fontFamily: 'KGred',
            fontSize: 30,
            color: Colors.orangeAccent,
          ),
        ),
        backgroundColor: Color(0xff2be0b5),
        toolbarHeight: 70,
      ),

      //body
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          right: 40,
          left: 40,
        ),
        child: ListView(
          children: <Widget>[
            //texto informe seu email
            Text(
              "Informe seu Email",
              style: TextStyle(
                fontFamily: 'KGred',
                fontSize: 18,
                color: Colors.orangeAccent,
              ),
            ),

            //form de email
            TextFormField(
              autofocus: false,
              keyboardType: TextInputType.text,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),

            //sizebox para espaçamento
            SizedBox(
              height: 280,
            ),

            //Botao Recuperar Senha
            ButtonTheme(
              height: 50.0,
              child: RaisedButton(
                color: Color(0xff2be0b5),
                //Ação do Botao
                onPressed: () => {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Splash_recupera_senha())),
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Recuperar Senha",
                      style: TextStyle(
                        fontFamily: 'KGred',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      child: SizedBox(
                        child: Image.asset('assets/img/paw_icon.png'),
                        height: 28,
                        width: 28,
                      ),
                    )
                  ],
                ),
              ),
            ),

            //sizebox para espaçamento
            SizedBox(
              height: 30,
            ),

            //Botao Voltar tela de login
            ButtonTheme(
              height: 50.0,
              child: RaisedButton(
                color: Color(0xff2be0b5),
                //Ação do Botao
                onPressed: () => {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Login())),
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Voltar para o Login",
                      style: TextStyle(
                        fontFamily: 'KGred',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      child: SizedBox(
                        child: Image.asset('assets/img/paw_icon.png'),
                        height: 28,
                        width: 28,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
