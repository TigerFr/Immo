import 'package:daniella/work/drawer/para.dart';
import 'package:flutter/material.dart';
import '../Register/deconnecter.dart';
import '../work/drawer/para.dart';
import 'Produit.dart';

class New_Home extends StatefulWidget {
  const New_Home({Key? key}) : super(key: key);

  @override
  State<New_Home> createState() => _New_HomeState();
}

class _New_HomeState extends State<New_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        centerTitle: true,
        title: Text(
          'SMART IMMO',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          )
        ],
        backgroundColor: Color(0xff023f80),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            //la taille de l'interface pour l'affichage des chaques photos
            height: 700.0,
            child: Products(),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Francis'),
              accountEmail: Text('Francismukenge77@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Accueil'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person_add),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.house_sharp),
              ),
            ),
            InkWell(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => PARA()));},
              child: ListTile(
                title: Text('Parametres'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Disconncete()));
              },
              child: ListTile(
                title: Text('deconnecter'),
                leading: Icon(Icons.arrow_back),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Apropos'),
                leading: Icon(
                  Icons.help,
                  color: Color(0xff023f80),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
