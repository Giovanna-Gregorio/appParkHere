import 'package:app/pages/reserva.efetuada.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EstacionamentoPage extends StatelessWidget {
  String dropdownValue = 'Selecione o horário';
  String dropdownValueDia = 'Selecione o dia';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('4 Folhas'),
            backgroundColor: Colors.black),
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
            SizedBox(
              height: 20,
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
              height: 40,
            ),
            DropdownButtonFormField(
              value: dropdownValueDia,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              items: <String>['Selecione o dia', '10/06', '11/06', '12/06']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String newValue) {},
            ),
            SizedBox(
              height: 20,
            ),
            DropdownButtonFormField(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              items: <String>['Selecione o horário', '8h', '9h', '10h']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String newValue) {},
            ),
            SizedBox(
              height: 40,
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
                onPressed: () => {_navigateToMensagem(context)},
              ),
            )
          ]),
        ));
  }

  void _navigateToMensagem(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ReservaEfetuadaPage()));
  }
}
