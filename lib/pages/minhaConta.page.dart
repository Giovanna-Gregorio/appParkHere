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
          child: ListView(),
        ));
  }
}
