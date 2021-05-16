import 'package:flutter/material.dart';
import 'package:pet_adote/screens/CustomDrawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/img/logo_app_pet_name.png', height: 60),
        toolbarHeight: 70,
        backgroundColor: Color(0xff2be0b5),
      ),
      drawer: CustomDrawer(),
    );
  }
}
