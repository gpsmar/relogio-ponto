import 'package:flutter/material.dart';
import 'package:relogio_ponto/views/relogio.dart';
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
      // routes: <String, WidgetBuilder>{
      //   '/a': (BuildContext context) => Relogio()
      // },
      theme: ThemeData(
        primaryColor: Colors.indigo[300],
      ),
    );
  }
}
