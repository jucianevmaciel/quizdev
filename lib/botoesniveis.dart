import 'package:flutter/material.dart';

class BotoesNiveis extends StatelessWidget {
  final String texto;
  final Color cor;
  const BotoesNiveis({super.key, required this.texto, required this.cor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: cor),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          texto,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
