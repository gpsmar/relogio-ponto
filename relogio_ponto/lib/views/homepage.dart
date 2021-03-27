import 'package:flutter/material.dart';
import './relogio.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 150, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text('Olá, '),
                Text('Genivaldo'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Column(
                children: [
                  Text('Eu sou seu relógio de ponto.'),
                  Text('Vamos começar o dia?'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 200),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Relogio()),
                  );
                },
                child: Text('Agora mesmo!'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
