import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styletittle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  final styletittle2 = TextStyle(
    fontSize: 18,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: _mostrarSiguientePagina,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _crearImagen(),
              _crearTitulo(),
              _crearBotones(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: AssetImage('assets/basico.jpg'),
        height: 250,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Foto abstracto de un rio',
                  style: styletittle,
                  textAlign: TextAlign.start,
                ),
                Text(
                  'Foto abstracto de un rio',
                  style: styletittle2,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                Text(
                  '41',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearBotones() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _icons(Icons.call, 'CALL'),
          _icons(Icons.near_me, 'ROUTE'),
          _icons(Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Widget _icons(IconData icon, String text) {
    return Container(
      child: Column(
        children: [
          Icon(icon, size: 30, color: Colors.blue),
          Text(
            text,
            style: TextStyle(fontSize: 16, color: Colors.blue),
          ),
        ],
      ),
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        'Quis sint Lorem mollit ad elit non ut. Magna aute pariatur pariatur sunt excepteur occaecat sunt officia sunt id sunt anim minim. Eiusmod ipsum non ullamco excepteur amet id quis duis ex excepteur minim tempor in. Dolor dolore minim commodo esse ipsum adipisicing adipisicing in duis eu enim. Consequat laborum dolor adipisicing adipisicing laborum ea.',
        textAlign: TextAlign.justify,
      ),
    );
  }

  void _mostrarSiguientePagina(DragStartDetails details) {
    print('Hola!!!');
  }
}
