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
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Voltar para Home'),
          ),
        ),
      ),
    );
  }
}
