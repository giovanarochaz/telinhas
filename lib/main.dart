import 'package:flutter/material.dart';
import 'package:telinhas/telaCinco.dart';
import 'package:telinhas/telaDois.dart';
import 'package:telinhas/telaQuatro.dart';
import 'package:telinhas/telaTres.dart';
import 'package:telinhas/telaUm.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '5 Telas com Botões',
      home: HomeScreen(),
      routes: {
        '/coluna': (context) => Tela1(),
        '/tela2': (context) => Tela2(),
        '/tela3': (context) => Tela3(),
        '/tela4': (context) => Tela4(),
        '/tela5': (context) => Tela5(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela Inicial')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/coluna'),
              child: Text('Exercicio 01'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/tela2'),
              child: Text('Ir para Tela 2'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/tela3'),
              child: Text('Ir para Tela 3'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/tela4'),
              child: Text('Ir para Tela 4'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tela5()),
                );
              },
              child: Text('Ir para Tela 5'),
            ),
          ],
        ),
      ),
    );
  }
}

