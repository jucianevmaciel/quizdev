import 'package:flutter/material.dart';
import 'package:quizdev/bancodedados/questoes.dart';
import 'package:quizdev/colors.dart';
import 'package:quizdev/fimquiz.dart';
import 'package:quizdev/quizinfor.dart';

class Perguntas extends StatefulWidget {
  final String nivel;
  final List<Questoes> quantQuestoes;
  const Perguntas(
      {super.key, required this.nivel, required this.quantQuestoes});

  @override
  State<Perguntas> createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {
  int? respostaescolhida;
  int perguntaAtual = 0;
  int quantAcertos = 0;
  void alternativaCorreta(int resposta) {
    respostaescolhida=resposta;
    if (respostaescolhida == widget.quantQuestoes[perguntaAtual].altercorreta) {
      quantAcertos++;
    }proximaPergunta();
  }

  void proximaPergunta() {
    if (perguntaAtual < widget.quantQuestoes.length - 1) {
      setState(() {
        perguntaAtual++;
        respostaescolhida = null;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FimQuiz()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nivel),
        centerTitle: true,
        backgroundColor: widget.nivel == "facil"
            ? Colorsapp().violeta1
            : widget.nivel == "medio"
                ? Colorsapp().violeta2
                : Colorsapp().violeta3,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.quantQuestoes[perguntaAtual].questoes),
            ...widget.quantQuestoes[perguntaAtual].alternativas.asMap().entries.map((e) {
              int indexResposta = e.key;
              String resposta = e.value;
              return QuizInfor(titulo: resposta, nivel: widget.nivel, clicar: ()=> alternativaCorreta(indexResposta),);
            }).toList(),
                     ]
            ),
           
        ),
      
    );
  }
}
