import 'package:app/pages/minhaConta.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'lista.estacionamento.page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  final pageViewController = PageController();

  @override
  void dispose() {
    super.dispose();
    pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageViewController,
        children: [ListaEstacionamentosPage(), MinhaContaPage()],
      ),
      //tabs[_currentIndex],
      bottomNavigationBar: AnimatedBuilder(
          animation: pageViewController,
          builder: (context, snaphot) {
            return BottomNavigationBar(
                iconSize: 35,
                backgroundColor: Colors.black,
                currentIndex: pageViewController?.page?.round() ?? 0,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), title: Text("Home")),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), title: Text("Minha conta")),
                ],
                selectedItemColor: Colors.yellow[800],
                unselectedItemColor: Colors.white,
                onTap: (index) {
                  pageViewController.jumpToPage(index);
                });
          }),
    );
  }
}

class ListaEstacionamentos {}
