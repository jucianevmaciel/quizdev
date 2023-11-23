import 'package:flutter/material.dart';
import 'package:quizdev/colors.dart';
import 'package:quizdev/quizinfor.dart';

class Perguntas extends StatelessWidget {
  final String nivel;
  const Perguntas({super.key, required this.nivel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nivel),
        centerTitle: true,
        backgroundColor: nivel == "Básico"
            ? Colorsapp().violeta1
            : nivel == "Médio"
                ? Colorsapp().violeta2
                : Colorsapp().violeta3,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "o que é um robô?",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 49,
            ),
            QuizInfor(
              titulo:
                  "Uma máquina  que realizar tarefas específicas automaticamente.",
              nivel: nivel,
            ),
            QuizInfor(
              titulo:
                  "Uma máquina  que realizar tarefas específicas automaticamente.",
              nivel: nivel,
            ),
            QuizInfor(
              titulo:
                  "Uma máquina  que realizar tarefas específicas automaticamente.",
              nivel: nivel,
            ),
            QuizInfor(
              titulo:
                  "Uma máquina  que realizar tarefas específicas automaticamente.",
              nivel: nivel,
            ),
            Padding(
              padding: const EdgeInsets.only(top:70),
              child: ElevatedButton(onPressed: (){}, child: Text("Enviar", style: TextStyle(color: Colors.white, fontSize: 20),), ),
            )
          ],
        ),
      ),
    );
  }
}
