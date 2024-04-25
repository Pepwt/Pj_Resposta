import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns';
    } else if (pontuacao < 12) {
      return 'Você é bom!!';
    } else if (pontuacao < 16) {
      return 'Maravilhoso';
    } else {
      return 'O Original!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 33),
          ),
        ),
        TextButton(
          onPressed: quandoReiniciarQuestionario,
          style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all<Color>(Colors.blueAccent),
          ),
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
