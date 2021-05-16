import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Seu nome",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            accountEmail: Text("user@mail.com",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/img/fundo_teste.png'),
                fit: BoxFit.cover,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: Image.asset('assets/img/logo_app_pet_name.png'),
              backgroundColor: Color(0xff2be0b5),
            ),
          ),
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
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Suas doações"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.article),
            title: Text("Termos de Uso"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("Seus contatos"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 224.0),
            child: RaisedButton(
              child: Icon(Icons.exit_to_app),
              color: Color(0xff2be0b5),
              onPressed: () {
                print("Clicou no botão de sair");
              },
            ),
          ),
        ],
      ),
    );
  }
}
