import 'package:flutter/material.dart';
import 'package:quizdev/colors.dart';

class QuizInfor extends StatelessWidget {
  const QuizInfor({super.key, required this.titulo, required this.nivel, this.clicar});
  final String titulo;
  final String nivel;
  final clicar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: GestureDetector(
        onTap: clicar,
        child: Card(
          color: nivel == "facil"
              ? Colorsapp().violeta1
              : nivel == "medio"
                  ? Colorsapp().violeta2
                  : Colorsapp().violeta3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                titulo,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontFamily: "poppins"),
              ),
            ),
          ),
        ),
          ),
    );
  }
}
