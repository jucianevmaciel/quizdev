import 'package:flutter/material.dart';

class FimQuiz extends StatelessWidget {
  final int? quantacertos;
  const FimQuiz({super.key, required this.quantacertos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Fim do Quiz',
                style: TextStyle(fontSize: 25, fontFamily: "Poppins")),
                Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 220),
              child: Image.asset(
                'assets/images/trofeu.png',
                width: 150, // Ajuste o tamanho conforme necessário
                height: 150,
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
              child: Text(
                'Parabéns! Você concluiu o quiz com ${quantacertos} acertos!',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Poppins",
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
