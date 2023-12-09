import 'package:hive/hive.dart';
@HiveType(typeId: 0)

class Conquista {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final double porcentagem;
  @HiveField(2)
  final int quantAcertos;
  @HiveField(3)
  final String nivel;

  Conquista(
      {required this.id,
      required this.porcentagem,
      required this.quantAcertos,
      required this.nivel});
}
