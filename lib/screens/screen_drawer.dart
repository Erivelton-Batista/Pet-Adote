import 'package:flutter/material.dart';
import 'package:pet_adote/screens/screen_cadastro_pet.dart';
import 'package:pet_adote/screens/screen_login.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          //perfil do usuario
          UserAccountsDrawerHeader(
            accountName: Text("Seu nome",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            accountEmail: Text("user@mail.com",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            //imagem de fundo
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/img/fundo_teste.png'),
                fit: BoxFit.cover,
              ),
            ),
            //imagem do perfil do usuario
            currentAccountPicture: CircleAvatar(
              child: Image.asset('assets/img/logo_app_pet_name.png'),
              backgroundColor: Color(0xff2be0b5),
            ),
          ),

          //lista do menu Seu Perfil
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Seu perfil",
              style: TextStyle(fontFamily: 'KGred'),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          //lista do menu Suas doações
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(
              "Suas doações",
              style: TextStyle(fontFamily: 'KGred'),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          //lista do menu Termos de uso
          ListTile(
            leading: Icon(Icons.article),
            title: Text(
              "Termos de Uso",
              style: TextStyle(fontFamily: 'KGred'),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          //lista do menu Seus contatos
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text(
              "Seus contatos",
              style: TextStyle(fontFamily: 'KGred'),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          //lista de creditos
          ListTile(
            leading: Icon(Icons.article_outlined),
            title: Text(
              "Creditos",
              style: TextStyle(fontFamily: 'KGred'),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Login()));
            },
          ),

          //lista de sair da Conta
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text(
              "Sair",
              style: TextStyle(fontFamily: 'KGred'),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Login()));
            },
          ),

          //botao de por para adotar os pets
          Container(
            height: 70,
            child: RaisedButton(
              color: Colors.orangeAccent,
              //Ação do botão
              onPressed: () => {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Cadastropet())),
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Colocar um Pet\n" "para Doação",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'KGred',
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      child: Image.asset("assets/img/adocao_icon.png"),
                      height: 45,
                      width: 45,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}