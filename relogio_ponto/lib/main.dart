import 'dart:math';

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
        home: HomePage());
  }
}
