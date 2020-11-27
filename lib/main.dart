import 'package:diseno/pages/basic_page.dart';
import 'package:diseno/pages/buttons_page.dart';
import 'package:diseno/pages/medium_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diseños',
      debugShowCheckedModeBanner: false,
      initialRoute: 'button',
      routes: {
        'basico': (BuildContext) => BasicPage(),
        'medio': (BuildContext) => MediumPage(),
        'button': (BuildContext) => ButtonsPage(),
      },
    );
  }
}
