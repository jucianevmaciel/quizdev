import 'package:flutter/material.dart';
import 'package:quizdev/colors.dart';

class Perguntas extends StatelessWidget {
  final String nivel;
  const Perguntas({super.key, required this.nivel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: nivel == "facil"
              ? Colorsapp().violeta1
              : nivel == "medio"
                  ? Colorsapp().violeta2
                  : Colorsapp().violeta3,
        ),
      ),
    );
  }
}
