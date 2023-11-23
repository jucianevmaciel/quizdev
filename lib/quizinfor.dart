import 'package:flutter/material.dart';
import 'package:quizdev/colors.dart';

class QuizInfor extends StatelessWidget {
  const QuizInfor({super.key, required this.titulo, required this.nivel});
  final String titulo;
  final String nivel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: nivel == "Básico"? Colorsapp().violeta1: nivel == "Médio"?Colorsapp().violeta2: Colorsapp().violeta3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(titulo, textAlign: TextAlign.center,),
          
          
        ),
      )

      
    );
  }
}