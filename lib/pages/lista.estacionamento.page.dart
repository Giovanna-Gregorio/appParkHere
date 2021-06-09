import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'estacionamento.page.dart';

class ListaEstacionamentosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Lista de Estabelecimentos'),
            backgroundColor: Colors.black),
        body: Container(
          padding: EdgeInsets.only(top: 40, left: 40, right: 40),
          color: Colors.white,
          child: ListView(
            children: [
              Container(
                  height: 50,
                  child: TextButton(
                    child: Text(
                      "4 Folhas",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    onPressed: () => {_navigateToEstacionamento(context)},
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  child: TextButton(
                    child: Text(
                      "2 Pinheiros",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    onPressed: () => {},
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  child: TextButton(
                    child: Text(
                      "Giga",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    onPressed: () => {},
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  child: TextButton(
                    child: Text(
                      "Riachuelo",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    onPressed: () => {},
                  )),
            ],
          ),
        ));
  }

  void _navigateToEstacionamento(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => EstacionamentoPage()));
  }
}
