import 'package:flutter/material.dart';
import 'Home.dart';

class Cadastro extends StatefulWidget {
  @override
  Cadastro({Key key}) : super(key: key);

  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  int _itemSelecionado = 0;
  String text;
  void changeText(int index) {
    setState(() {
      _itemSelecionado = index;
    });
  }

  static const TextStyle opcaoestilo =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: opcaoestilo,
    ),
    Text(
      'Index 1: page 1',
      style: opcaoestilo,
    ),
    Text(
      'Index 2: page 2',
      style: opcaoestilo,
    ),
    Text(
      'Index 3: page 3',
      style: opcaoestilo,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //alignment: Alignment.center,
        child: widgetOptions.elementAt(_itemSelecionado),
        /*RaisedButton(
          child: Text(
            "Back",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          color: Colors.blueAccent,
          onPressed: () {
            Navigator.pop(context);
          },
        ),*/
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            title: Text("page 1"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessible_forward),
            title: Text("page 2"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text("page 3"),
          ),
        ],
        currentIndex: _itemSelecionado,
        selectedItemColor: Colors.deepPurpleAccent,
        onTap: changeText,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
