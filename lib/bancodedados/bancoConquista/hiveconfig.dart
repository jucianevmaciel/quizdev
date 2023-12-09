
import 'dart:io';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path_provider/path_provider.dart';
import 'conquista.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveConfig {
  static start() async {
    Directory diretorio = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(diretorio.path);
  }

  static Future<Box> _openBox() async {
    final recebeDocumento =
        await path_provider.getApplicationDocumentsDirectory();
    Hive.init(recebeDocumento.path);
    return await Hive.openBox("Conquista");
  }

  static Future<void> inserirconquista(Conquista conquista, int id) async {
    final caixa = await _openBox();
    await caixa.put(id, conquista);
  }

  static Future<void> removerconquista(Conquista conquista) async {
    final caixa = await _openBox();
    await caixa.delete(conquista.id);
  }

  static Future<double> porcentagemconquista(String nivel) async {
    try {
      final caixa = await _openBox();
      final conquista = caixa.values.whereType<Conquista>().toList();
      if (conquista.isNotEmpty) {
        final conquistaAtual = conquista.lastWhere(
          (auxconquista) => auxconquista.nivel == nivel,
          orElse: () => Conquista(
            id: nivel == "facil"
                ? 0
                : nivel == "medio"
                    ? 1
                    : 2,
            porcentagem: 0.0,
            quantAcertos: 0,
            nivel: nivel,
          ),
        );
        return conquistaAtual.porcentagem;
      } else {
        return 0;
      }
    } catch (e) {
      print("Erro ao obter a porcentagem");
      return 0;
    }
  }

  static Future <List<Conquista>> mostraConquista()async{
    try {
      final caixa = await _openBox();
      if (caixa.isEmpty){
        return [];
      }else{
       List<Conquista> listconquista = caixa.values.map((dynamic e) {
          if (e is Conquista){
            return e;
            }else{
              throw const FormatException('Valor inesperado no box');
              //print("erro");
              }
              }).toList();
      return listconquista;
      }
  }catch(e) {
     print("Erro ao mostrar conquista ");
      return [];
    

  }
}
}
