import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizdev/bancodedados/bancoConquista/conquista.dart';
import 'package:quizdev/bancodedados/bancoConquista/hiveconfig.dart';
import 'package:quizdev/bancodedados/bancoperguntas/questoes.dart';
import 'package:quizdev/componentes/colors.dart';
import 'package:quizdev/componentes/fimquiz.dart';
import 'package:quizdev/componentes/quizinfor.dart';

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
    respostaescolhida = resposta;
    if (respostaescolhida == widget.quantQuestoes[perguntaAtual].altercorreta) {
      quantAcertos++;
    }
    proximaPergunta();
  }

  void proximaPergunta() async {
    if (perguntaAtual < widget.quantQuestoes.length - 1) {
      setState(() {
        perguntaAtual++;
        respostaescolhida = null;
      });
    } else {
      final double novaporcentagem = calculaporcentagem();
      final double buscarporcentagem =
          await HiveConfig.porcentagemconquista(widget.nivel);
      if (novaporcentagem > buscarporcentagem) {
        final bool porcentagemSalva = await alteraporcentagem(novaporcentagem);
        if (porcentagemSalva){
           Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => FimQuiz(
            quantacertos: quantAcertos,
          ),
        ),
      );
          
        }
      }else{
         Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => FimQuiz(
            quantacertos: quantAcertos,
          ),
        ),
      );
      }
    }
  }

  double calculaporcentagem() {
    return (quantAcertos / widget.quantQuestoes.length) * 100;
  }

  Future<bool> alteraporcentagem(double porcentagem) async {
    try {
      final String nivel = widget.nivel.toLowerCase();
      int id = nivel == "facil"
          ? 0
          : nivel == "medio"
              ? 1
              : 2;
      Conquista conquista = Conquista(
          id: id,
          porcentagem: porcentagem,
          quantAcertos: quantAcertos,
          nivel: nivel);
          await HiveConfig.inserirconquista(conquista, id);

      return true;
    } catch (e) {
      print("Erro");
      return false;
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
        padding: const EdgeInsets.fromLTRB(25, 64, 25, 40),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Text(
                widget.quantQuestoes[perguntaAtual].questoes,
                style: TextStyle(fontSize: 25, fontFamily: "Poppins"),
              ),
            ),
          ),
          ...widget.quantQuestoes[perguntaAtual].alternativas
              .asMap()
              .entries
              .map((e) {
            int indexResposta = e.key;
            String resposta = e.value;
            return QuizInfor(
              titulo: resposta,
              nivel: widget.nivel,
              clicar: () => alternativaCorreta(indexResposta),
            );
          }).toList(),
        ]),
      ),
    );
  }
}
