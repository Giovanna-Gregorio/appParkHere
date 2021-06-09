import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.black),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("Minha conta")),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket), title: Text("Meus pedidos")),
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(top: 40, left: 40, right: 40),
          color: Colors.white,
          child: ListView(),
        ));
  }
}
