import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EstacionamentoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('4 Folhas'), backgroundColor: Colors.black),
        body: Container(
          padding: EdgeInsets.only(top: 40, left: 40, right: 40),
          color: Colors.white,
          child: ListView(children: <Widget>[
            Text(
              'Informações',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Dias de funcionamento:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Segunda a Sábado',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.left,
            ),
            Text(
              'Horário:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '8h as 18h',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Contatos:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 10,
            ),
            Card(
                child: ListTile(
              title: Text("(14) 3456-8650"),
              leading: CircleAvatar(
                child: Image.asset("assets/telefone.png"),
              ),
            )),
            SizedBox(
              height: 5,
            ),
            Card(
                child: ListTile(
              title: Text("(14) 99456-4386"),
              leading: CircleAvatar(
                child: Image.asset("assets/whats.png"),
              ),
            )),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.green[400],
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: TextButton(
                child: Text(
                  "Reservar",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onPressed: () => {},
              ),
            )
          ]),
        ));
  }
}
