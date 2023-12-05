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
            Text('Fim do Quiz'),
            Padding(
              padding: const EdgeInsets.only(top:220),
              child: Image.asset(
                'assets/images/trofeu.png',
                width: 150, // Ajuste o tamanho conforme necessário
                height: 150,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Parabéns! Você concluiu o quiz com ${quantacertos} acertos!',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
