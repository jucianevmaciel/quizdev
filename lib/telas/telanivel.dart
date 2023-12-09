import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizdev/bancodedados/bancoperguntas/buscarquestoes.dart';
import 'package:quizdev/bancodedados/bancoperguntas/questoes.dart';
import 'package:quizdev/componentes/botoesniveis.dart';
import 'package:quizdev/componentes/colors.dart';
import 'package:quizdev/telas/telaperguntas.dart';
import 'package:quizdev/componentes/tabnav.dart';

class TelaNivel extends StatelessWidget {
  const TelaNivel({super.key});

  @override
  Widget build(BuildContext context) {
    int quantQuestoes = 3;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  "Níveis",
                  style: TextStyle(color: Colors.black, fontSize: 23),
                ),
              ),
              Divider(),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 90),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: BotoesNiveis(
                          texto: "Fácil",
                          cor: Colorsapp().violeta1,
                          clicar: () {
                            List<Questoes> perguntasFaceis =
                                buscaPerguntas("facil");
                            List<Questoes> perguntasAleatorias =
                                selecionaPerguntas(
                                    perguntasFaceis, quantQuestoes);
                            Get.to(() => Perguntas(
                                  nivel: 'facil',
                                  quantQuestoes: perguntasAleatorias,
                                ));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: BotoesNiveis(
                          texto: "Médio",
                          cor: Colorsapp().violeta2,
                          clicar: () {
                            List<Questoes> perguntasMedias =
                                buscaPerguntas("medio");
                            List<Questoes> perguntasAleatorias =
                                selecionaPerguntas(
                                    perguntasMedias, quantQuestoes);
                            Get.to(() => Perguntas(
                                  nivel: 'medio',
                                  quantQuestoes: perguntasAleatorias,
                                ));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: BotoesNiveis(
                          texto: "Avançado",
                          cor: Colorsapp().violeta3,
                          clicar: () {
                            List<Questoes> perguntasMedias =
                                buscaPerguntas("dificil");
                            List<Questoes> perguntasAleatorias =
                                selecionaPerguntas(
                                    perguntasMedias, quantQuestoes);
                            Get.to(() => Perguntas(
                                  nivel: 'dificil',
                                  quantQuestoes: perguntasAleatorias,
                                ));
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: TabNav(
        telaatual: 0,
      ),
    );
  }
}
