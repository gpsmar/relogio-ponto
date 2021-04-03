import 'package:flutter/material.dart';
import './relogio.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        padding: EdgeInsets.only(top: 150, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Olá, ',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Genivaldo',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Column(
                children: [
                  Text(
                    'Eu sou seu relógio de ponto.',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    'Vamos começar o dia?',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 200),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Relogio();
                    },
                  ));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.indigo[50],
                  ),
                  child: Text(
                    'Isso é um teste',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.indigo[400],
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
