import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
    _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }
  
  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>>perguntas = [
      {
       'texto': 'Qual é a sua cor favorita?',
       'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
       'respostas': ['Coelho', 'Cobre', 'Elefante', 'Leão'],

      },
      {
         'texto' : 'Qual é o seu instrutor favorito?',
         'respostas' : ['Maria', 'João', 'Leo', 'Pedro'],
      }
        
    ];

   for (var textoResp in perguntas[_perguntaSelecionada]['respostas'] as List<String>) {
  print(textoResp);
}


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto']as String),
            Resposta('Resposta 1',_responder),
            Resposta('Resposta 2',_responder),
            Resposta('Resposta 3',_responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {

  
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
 // void Function() funQRetornaUmaOutraFun(){
  //  return(){
  //  print('Pergunta respondida #02');
  //  };
 // }

}
