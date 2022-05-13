import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:practicas/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _ver = true;
  final _usuario = TextEditingController();
  final _clave = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Bienvenido a la App",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          _usuarioText(),
          _claveText(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
          ),
          _botonLogin(),
        ],
      ),
    );
  }

  Widget _usuarioText() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: TextFormField(
            keyboardType: TextInputType.text,
            controller: _usuario,
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Ingrese su usuario',
              labelText: 'Usuario:',
            ),
          ));
    });
  }

  Widget _claveText() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: TextFormField(
            keyboardType: TextInputType.text,
            controller: _clave,
            obscureText: _ver,
            decoration: InputDecoration(
              icon: Icon(Icons.vpn_key),
              hintText: 'Ingrese su clave',
              labelText: 'Clave:',
              suffixIcon: GestureDetector(
                onTap: () => _verclave(),
                child: Icon(
                  _ver ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
          ));
    });
  }

  // este void solamente cambia la opción de ver la clave
  void _verclave() {
    setState(() {
      _ver = !_ver;
    });
  }

  Widget _botonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton.icon(
        onPressed: () => _login(),
        icon: Icon(Icons.login),
        label: Text("Ingresar al Sistema"),
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 50),
            elevation: 10,
            primary: Colors.redAccent),
      );
    });
  }

  void _login() {
    if (_usuario.text == "admin" && _clave.text == "1234") {
      /*Fluttertoast.showToast(
          msg: "BIENVENIDO",
          backgroundColor: Colors.green,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP);*/
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      Fluttertoast.showToast(
          msg: "Acceso Revocado",
          backgroundColor: Colors.red,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP);
    }
  }
}
