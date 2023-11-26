import 'package:flutter/material.dart';

class BotoesNiveis extends StatelessWidget {
  final String texto;
  final Color cor;
  final clicar;
  const BotoesNiveis(
      {super.key, required this.texto, required this.cor, this.clicar});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: clicar,
      child: Container(
        width: 320,
        height: 80,
        alignment: Alignment.center,
        decoration:
            BoxDecoration(color: cor, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            texto,
            style: TextStyle(color: Colors.black, fontSize: 23),
          ),
        ),
      ),
    );
  }
}
