import 'package:flutter/material.dart';

class MediumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _pagina1(),
          _pagina2(),
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: [
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _textos() {
    final estilo = TextStyle(fontSize: 50, color: Colors.lightBlue);
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  '11º',
                  style: estilo,
                ),
                Text(
                  'Miercoles',
                  style: estilo,
                ),
              ],
            ),
            Icon(
              Icons.keyboard_arrow_down,
              size: 50,
              color: Colors.lightBlue,
            )
          ],
        ),
      ),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/medium2.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(100, 30, 22, 1),
    );
  }

  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(
        child: RaisedButton(
          onPressed: () {},
          color: Colors.lightBlue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          child: Text(
            'Bienvenidos!',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
