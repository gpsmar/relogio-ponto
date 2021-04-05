import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String url = 'https://jsonplaceholder.typicode.com';
  final String recurso = '/users/1';
  String json = '';
  String varTeste = '';

  _fazerRequisicao() async {
    json = '';
    var uri = Uri.parse(url + recurso);
    var resposta = await get(uri);
    setState(() {
      if (resposta.statusCode == 200) {
        json = resposta.body;
      } else {
        json = resposta.statusCode.toString();
      }
    });

    var jsonResposta = jsonDecode(json);
    varTeste = jsonResposta['phone'].toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            TextButton(
              onPressed: () {
                _fazerRequisicao();
              },
              child: Text(
                'Solicitar Usuários',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              height: 600,
              child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  Text(
                    json,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text('ID: $varTeste'),
          ],
        ),
      ),
    );
  }
}
