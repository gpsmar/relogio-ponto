import 'package:flutter/material.dart';
import './views/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu Relógio de Ponto',
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.indigo[300],
        fontFamily: 'Raleway',
        textTheme: TextTheme(
            headline5: TextStyle(
              color: Colors.white,
            ),
            headline4: TextStyle(
              color: Colors.white,
            ),
            headline3: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 38)),
      ),
    );
  }
}
