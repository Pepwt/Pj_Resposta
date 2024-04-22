import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp>{
  
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
    perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }
  
  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[perguntaSelecionada]),
            Resposta('Resposta 1'),
            Resposta('Resposta 2'),
            Resposta('Resposta 3'),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {

  
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
 // void Function() funQRetornaUmaOutraFun(){
  //  return(){
  //  print('Pergunta respondida #02');
  //  };
 // }

}
