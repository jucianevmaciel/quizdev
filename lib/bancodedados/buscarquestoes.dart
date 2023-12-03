import 'package:quizdev/bancodedados/bancodedados.dart';
import 'package:quizdev/bancodedados/questoes.dart';

List<Questoes> buscaPerguntas(String nivel) {
  return BancodeDados()
      .perguntasquiz
      .where((element) => element.nivel == nivel)
      .toList();
}

List<Questoes> selecionaPerguntas(List <Questoes> perguntas, int quantQuestoes ){
   perguntas.shuffle();
   return perguntas.take(quantQuestoes).toList();
}
