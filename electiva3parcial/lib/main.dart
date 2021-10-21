import 'package:flutter/material.dart';

void main() {
  runApp(ParcialP3());
}

class ParcialP3 extends StatelessWidget {
  const ParcialP3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ParcialP3",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parcial 3"),
      ),
      body: cuerpoApp(),
      resizeToAvoidBottomInset: false,
    );
  }
}

Widget cuerpoApp() {
  return Container(
    child: Center(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          titulo(), //
          SizedBox(
            height: 10,
          ),
          idg(),
          SizedBox(
            height: 10,
          ),
          nombre(),
          SizedBox(
            height: 10,
          ),
          publico(),
          SizedBox(
            height: 10,
          ),
          btnGuardar()
        ],
      ),
    ),
  );
}

Widget titulo() {
  return Text(
    "CRUD GRUPOS BD",
    style: TextStyle(
      color: Colors.redAccent,
      fontSize: 50,
    ),
  );
}

Widget idg() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          hintText: "IdGrupo", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget nombre() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "NombreGrupo", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget publico() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Publico", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget btnGuardar() {
  // ignore: deprecated_member_use
  return FlatButton(
      color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
      onPressed: () {},
      child: Text(
        "Insertar",
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontFamily: "Verdana",
        ),
      ));
}
