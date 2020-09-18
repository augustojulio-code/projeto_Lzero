import 'package:flutter/material.dart';
import 'cadastro.dart';
import 'pagina2rank.dart';

int _valor = 0;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(
          "Algum App",
          style: TextStyle(color: Colors.blueAccent, fontSize: 20),
        ),
        backgroundColor: Colors.white,
        
      ),*/
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            stretch: true,
            backgroundColor: Color.fromARGB(0xff, 0xff, 0xff, 0xff),
            onStretchTrigger: () {
              return;
            },
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                "Algum App",
                style: TextStyle(color: Colors.pink),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        //begin: Alignment(0.0, 0.5),
                        //end: Alignment(0.0, 0.0),
                        colors: <Color>[
                          Color(0xFFFFFFFF),
                          Color(0xFFFFFFFF),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ListTile(
                  leading: Icon(Icons.wb_sunny),
                  title: Text("Next Page"),
                  subtitle: Text("On Click"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cadastro()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.plus_one),
                  title: Text('Aperta pata +1'),
                  //subtitle: Text('sunny, h: 80, l: 65'),
                  onTap: () {
                    setState(() {
                      _valor++;
                    });
                  },
                  subtitle: Text("$_valor"),
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny),
                  title: Text('Page 2'),
                  subtitle: Text('On Click'),
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PageRank()));
                    });
                  },
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny),
                  title: Text('Monday'),
                  subtitle: Text('sunny, h: 80, l: 65'),
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny),
                  title: Text('Monday'),
                  subtitle: Text('sunny, h: 80, l: 65'),
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny),
                  title: Text('Monday'),
                  subtitle: Text('sunny, h: 80, l: 65'),
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny),
                  title: Text('Monday'),
                  subtitle: Text('sunny, h: 80, l: 65'),
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny),
                  title: Text('Monday'),
                  subtitle: Text('sunny, h: 80, l: 65'),
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny),
                  title: Text('Monday'),
                  subtitle: Text('sunny, h: 80, l: 65'),
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny),
                  title: Text('Monday'),
                  subtitle: Text('sunny, h: 80, l: 65'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
