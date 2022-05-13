import 'package:flutter/material.dart';

class DatosScreen extends StatefulWidget {
  @override
  _DatosScreenState createState() => _DatosScreenState();
}

class _DatosScreenState extends State<DatosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Esta es otra pantalla"),
      ),
      body: Text("Este es otro texto"),
    );
  }
}
