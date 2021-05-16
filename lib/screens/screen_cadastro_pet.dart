import 'package:flutter/material.dart';
import 'package:pet_adote/screens/CustomDrawer.dart';
import 'package:pet_adote/screens/screen_anuncios.dart';

class Cadastropet extends StatefulWidget {
  @override
  _CadastropetState createState() => _CadastropetState();
}

class _CadastropetState extends State<Cadastropet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //barra da tela cadastro de pet
      appBar: AppBar(
        title: Center(
          child: Text(
            'Cadastro pet',
            style: TextStyle(
              fontFamily: 'KGred',
              fontSize: 30,
              color: Colors.orangeAccent,
            ),
          ),
        ),
        backgroundColor: Color(0xff2be0b5),
        toolbarHeight: 70,
      ),
      //drawer com o menu
      drawer: CustomDrawer(),
      //body cadastro com container
      body: Container(
        padding: EdgeInsets.only(
          top: 8,
          left: 30,
          right: 30,
          bottom: 10,
        ),
        child: Center(
          child: ListView(
            children: <Widget>[
              //Foto do perfil
              CircleAvatar(
                child: Image.asset('assets/img/img_perfil.jpg'),
                radius: 65,
              ),

              //Form de Nome
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),

              //Form de Especie
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Espécie",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              //Form de Cor
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Cor",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              //Form de raça
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Raça",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              //Form de Sexo
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Sexo",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              //Form de Porte
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Porte",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              //Form de idade
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Idade",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Divider(),
              //Form de breve descrição
              TextFormField(
                maxLines: 5,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(12, 20, 12, 5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Breve descrição",
                ),
              ),
              Divider(),
              //Botao Cadastrar
              ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () => {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomeScreen())),
                  },
                  child: Text(
                    "Colocar para adoção",
                    style: TextStyle(
                      fontFamily: 'KGred',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  color: Color(0xff2be0b5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
