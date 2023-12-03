import 'package:flutter/material.dart';
import 'package:quizdev/colors.dart';

class QuizInfor extends StatelessWidget {
  const QuizInfor({super.key, required this.titulo, required this.nivel, this.clicar});
  final String titulo;
  final String nivel;
  final clicar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: clicar,
      child: Card(
        color: nivel == "Básico"
            ? Colorsapp().violeta1
            : nivel == "Médio"
                ? Colorsapp().violeta2
                : Colorsapp().violeta3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(
              titulo,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
        );
  }
}
