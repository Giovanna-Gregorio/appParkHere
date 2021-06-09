import 'package:app/pages/login.page.dart';
import 'package:app/pages/minhas.reservas.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MinhaContaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: Text('Minha Conta'), backgroundColor: Colors.black),
        body: Container(
          padding: EdgeInsets.only(top: 40, left: 40, right: 40),
          color: Colors.white,
          child: ListView(children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg",
              ),
              radius: 50,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Alice James",
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            ListTile(
              title: Text("Minhas Reservas"),
              leading: Icon(Icons.car_rental),
              onTap: () => _navigateToMinhasReservas(context),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
                title: Text("Avisos"), leading: Icon(Icons.article_rounded)),
            SizedBox(
              height: 220,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.yellow[800],
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: TextButton(
                child: Text(
                  "Sair",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () => {_navigateToLogin(context)},
              ),
            ),
          ]),
        ));
  }

  void _navigateToLogin(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void _navigateToMinhasReservas(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MinhasReservasPage()));
  }
}
