import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;
  
  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent), // Define a cor de fundo
          foregroundColor: MaterialStateProperty.all<Color>(Colors.purple), // Define a cor do texto
        ),
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
