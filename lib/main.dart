import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime
      ),
      home: MyHomePage(title: 'FRASES DESMOTIVACIONAIS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  List _frasesDesmotivacionais = [
    '"Daqui pra frente é só pra trás"',
    '"Calma, respira, é só uma fase ruim, logo vai piorar"',
    '"Nunca foi azar, sempre foi incompetência"',
    '"Dias ruins existem para que dias ainda piores possam vir"',
    '"Você é muito mais fraco do que pensa"',
    '"Confie no seu potencial, reaja a um assalto!"',
    '"Só dará errado se você tentar"',
    '"Seu maior erro é acreditar que é capaz"',
    '"A violência nunca é a resposta. Ela é uma pergunta... na qual a resposta é sempre sim!"',
    '"Você não pode mudar o seu passado, mas ainda pode estragar o seu futuro"',
    '"Nunca deixe ninguém dizer que você não consegue. Diga você mesmo "Eu não consigo!""',
    '"Nunca subestime sua incapacidade"',
    '"O não você já tem, vá em busca da humilhação!"',
    '"Procrastinar é acreditar no potencial do seu "eu" de amanhã"',
    '"Não deixe pra desistir amanhã do que você pode desistir ainda hoje"',
    '"Vai! E se der medo... não vai não. Mó medão pô, fica aí mesmo"',
    '"Se não for ajudar, atrapalhe. O importante é participar!"',
    '"Se for pra desistir, desista de tentar"',
    '"Só existe uma coisa que te separa dos teus objetivos: a sua incapacidade"',
    '"Muitos podem dizer que você não vai conseguir. Acredite neles!"',
    '"O hoje é sempre uma oportunidade de mostrar que você pode ser pior que ontem"',
    '"Lute como nunca, perca como sempre"',
    '"Nunca é tarde para começar a desistir"',
    '"Pare de achar que ninguém gosta de você. Comece a ter certeza disso!"',
    '"Nunca deixe que uma frase motivacional melhore o seu dia de merda"'
  ];

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = new Random ().nextInt(25); //Contador de 0 a 24 = 25
     });
  }

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
                title: Text(widget.title),
      ),
      body: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pressione o botão abaixo para gerar uma nova frase',
            ),
            Text(
              _frasesDesmotivacionais [_numeroAleatorio],
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add_comment),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
