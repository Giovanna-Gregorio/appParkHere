import 'package:app/pages/cadastro.page.dart';
import 'package:app/pages/home.page.dart';
import 'package:app/pages/recuperarSenha.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 40, left: 40, right: 40),
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          SizedBox(
            width: 300,
            height: 300,
            child: Image.asset("assets/logo.png"),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 20)),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                    fontSize: 20)),
            style: TextStyle(fontSize: 20),
          ),
          Container(
            height: 40,
            alignment: Alignment.centerRight,
            child: TextButton(
              child: Text(
                "Recuperar Senha",
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              onPressed: () => {_navigateToRecuperarSenha(context)},
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
                color: Colors.yellow[800],
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: TextButton(
              child: Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => {_navigateToHome(context)},
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            child: TextButton(
              child: Text(
                "Cadastre-se",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              onPressed: () => {_navigateToCadastro(context)},
            ),
          )
        ],
      ),
    ));
  }

  void _navigateToHome(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomePage()));
  }

  void _navigateToCadastro(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => CadastroPage()));
  }

  void _navigateToRecuperarSenha(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => RecuperarSenhaPage()));
  }
}
