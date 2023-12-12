import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizdev/bancodedados/bancoConquista/conquista.dart';
import 'package:quizdev/bancodedados/bancoConquista/hiveconfig.dart';
import 'package:quizdev/bancodedados/bancoperguntas/questoes.dart';
import 'package:quizdev/componentes/colors.dart';
import 'package:quizdev/telas/fimquiz.dart';
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
  int? respostaEscolhida;
  int perguntaAtual = 0;
  int quantAcertos = 0;

  void selecionado(int indexResposta) {
    setState(() {
      if (respostaEscolhida == indexResposta) {
        respostaEscolhida = null;
      } else {
        respostaEscolhida = indexResposta;
      }
    });
  }

  bool alternativaCorreta() {
    return respostaEscolhida == widget.quantQuestoes[perguntaAtual].altercorreta;
  }

  void proximaPergunta() async {
    if (perguntaAtual < widget.quantQuestoes.length - 1) {
      setState(() {
        perguntaAtual++;
        respostaEscolhida = null;
      });
    } else {
      final double novaporcentagem = calculaporcentagem();
      final double buscarporcentagem =
          await HiveConfig.porcentagemconquista(widget.nivel);
      if (novaporcentagem > buscarporcentagem) {
        final bool porcentagemSalva = await alteraporcentagem(novaporcentagem);
        if (porcentagemSalva) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => FimQuiz(
                quantacertos: quantAcertos,
              ),
            ),
          );
        }
      } else {
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

  void enviarResposta() {
    if (respostaEscolhida != null) {
      if (alternativaCorreta()) {
        quantAcertos++;
      }
      proximaPergunta();
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
        padding: const EdgeInsets.fromLTRB(25, 75, 25, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text(
                  widget.quantQuestoes[perguntaAtual].questoes,
                  style: TextStyle(fontSize: 20, fontFamily: "Poppins"),
                  textAlign: TextAlign.center,
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
                clicar: () => selecionado(indexResposta),
                isSelected: indexResposta == respostaEscolhida,
                isCorrect: alternativaCorreta(),
              );
            }).toList(),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ElevatedButton(
                onPressed: () => enviarResposta(),
                child: const Text(
                  "Enviar",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
