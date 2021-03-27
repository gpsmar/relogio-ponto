import 'package:flutter/material.dart';

class Relogio extends StatefulWidget {
  @override
  _RelogioState createState() => _RelogioState();
}

class _RelogioState extends State<Relogio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  final snackBar = SnackBar(content: Text("Fui tocado!"));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Image(
                  image: AssetImage('lib/assets/clock.png'),
                  width: 200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Text('Toque no relógio para registrar o horário'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Voltar para Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
