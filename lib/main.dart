import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Relax App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      //ruta de ventanas
      routes: <String, WidgetBuilder>{
        "/inicio": (BuildContext) => Inicio(),
        "/empresa": (BuildContext) => Empresa(),
        "/productos": (BuildContext) => Productos(),
        "/contacto": (BuildContext) => Contacto(),
      }, //fin de rutas
      home: Inicio(),
    ); //Fin de la app material
  } //Fin del widget
} //Fin de clase relax app

class Empresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Nuestra Empresa'),
      ), // Fin de appbar
      body: Center(
        child: Text('Sección\nEmpresa'),
      ), //Fin de body center
    ); //Fin de Scaffold
  } //Fin de widget
} //Fin de clase Empresa

class Productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Nuestros Productos'),
      ), // Fin de appbar
      body: Center(
        child: Text('Sección\nProductos'),
      ), //Fin de body center
    ); //Fin de Scaffold
  } //Fin de widget
} //Fin de clase Productos

class Contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Contáctanos'),
      ), // Fin de appbar
      body: Center(
        child: Text('Sección\nContacto'),
      ), //Fin de body center
    ); //Fin de Scaffold
  } //Fin de widget
} //Fin de clase Contacto

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 130, bottom: 10, right: 10, left: 10),
        decoration: BoxDecoration(
          color: Colors.teal[100],
          image: DecorationImage(
            image: NetworkImage('https://raw.githubusercontent.com/Najeragim/imagenes/main/imss-image.jpg'),
            alignment: Alignment.topCenter,
          ),
          borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
        ), //Fin de caja 
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, "/inicio");
                        },
                        child: SizedBox(
                          width: 100.0,
                          height: 100.0,
                          child: Center(
                            child: Text(
                              "INICIO",
                              textAlign: TextAlign.center ,
                              style: TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),//Center del texto
                        ),
                      ),//Boton 1
                    )
                  ],
                ),//Columna interna
              ],
            ),//Fila 1.1
          ],
        ),//Columna 1
      ), //Fin del contenedor
    ); //Fin de scaffold
  } //Fin de widget
} //Fin de clase Inicio
