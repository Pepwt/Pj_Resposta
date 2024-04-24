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
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 77, 255, 228)), // Define a cor de fundo
          foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 176, 39, 171)), // Define a cor do texto
        ),
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
