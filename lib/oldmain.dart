import 'package:flutter/material.dart';

/*void main() {
  runApp(Center(
      child: Text(
    'Prueba flutter',
    textDirection: TextDirection.ltr,
    //style: TextStyle(color: Colors.red),
    //style: TextStyle(color: Color.fromARGB(255, 188, 22, 100)),
    //style: TextStyle(color: Color(0xff4F7E73)),
    style: TextStyle(
      color: Colors.indigoAccent,
      backgroundColor: Colors.black.withOpacity(0.5),
      fontSize: 25,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      height: 10,
    ),
  )));
}*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PI2021 App',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: MyHomePage(title: 'App Práctica Intermedia TI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _actualizar(bool subir) {
    setState(() {
      if (subir) {
        _counter++;
      } else {
        if (_counter > 0) _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('El contador va en:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  label: Text('Sumar'),
                  icon: Icon(Icons.add),
                  onPressed: () => _actualizar(true),
                ),
                Text("  "),
                ElevatedButton.icon(
                  label: Text('Restar'),
                  icon: Icon(Icons.remove),
                  onPressed: () => _actualizar(false),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          //child: Icon(Icons.add),
          child: Column(
            children: <Widget>[
              Icon(Icons.add),
              Text('Sumar'),
            ],
          )
          ),*/
    );
  }
}
