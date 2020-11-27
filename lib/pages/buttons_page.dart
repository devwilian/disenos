import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _colorFondo(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titulos(),
                _buttonRounded(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buttonNavigationBar(context),
    );
  }

  Widget _colorFondo() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
        ),
      ),
    );
    final cuadradoRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 380,
        height: 400,
        decoration: BoxDecoration(
          // color: Colors.pink[400],
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [
              Colors.pink[200],
              Colors.pink[400],
            ],
          ),
        ),
      ),
    );

    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -80,
          left: -40,
          child: cuadradoRosa,
        ),
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tipo de transaccion',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Esto es una transaccion de una categoria privada',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buttonNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(
                color: Color.fromRGBO(116, 117, 152, 1.0),
              ),
            ),
      ),
      child: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bubble_chart),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          title: Container(),
        ),
      ]),
    );
  }

  Widget _buttonRounded() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.lightBlue, Icons.apps, 'General'),
            _crearBotonRedondeado(Colors.purple, Icons.train, 'Transport'),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.pinkAccent, Icons.shop, 'Shoping'),
            _crearBotonRedondeado(Colors.orange, Icons.money_off, 'No money'),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.videocam, 'Entertaiment'),
            _crearBotonRedondeado(Colors.green, Icons.call_made, 'Send'),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.lime, Icons.collections, 'Photos'),
            _crearBotonRedondeado(Colors.teal, Icons.computer, 'My PC'),
          ],
        ),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icondata, String texto) {
    return Container(
      height: 160.0,
      margin: EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: color,
                child: Icon(
                  icondata,
                  size: 40.0,
                ),
              ),
              Text(
                texto,
                style: TextStyle(color: color),
              ),
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
          color: Color.fromRGBO(55, 56, 85, 0.7),
          borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
