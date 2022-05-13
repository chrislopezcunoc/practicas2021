import 'package:flutter/material.dart';
import 'package:practicas/screens/login_screen.dart';
import 'package:practicas/screens/datos_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla inicial"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Opción 1'),
              leading: Icon(Icons.create_new_folder),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DatosScreen()));
              },
            ),
            ListTile(
              title: Text('Salir'),
              leading: Icon(Icons.logout),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
      body: Text("Bienvenido a su sistema"),
    );
  }
}
