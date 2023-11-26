import 'package:flutter/material.dart';

class FimQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fim do Quiz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
              'Parabéns! Você concluiu o quiz!',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
