import 'package:hive/hive.dart';
import 'conquista.dart';

class ConquistaAdapter extends TypeAdapter<Conquista> {
  @override
  final int typeId = 0; // Identificador único para a classe Conquista

  @override
  Conquista read(BinaryReader reader) {
    // Lógica para ler os dados binários e criar uma instância de Conquista
    final id = reader.readInt();
    final nivel = reader.readString();
    final porcentagem = reader.readDouble();
    final acertos = reader.readInt();

    return Conquista(
      id: id,
      nivel: nivel,
      porcentagem: porcentagem,
      quantAcertos: acertos,
    );
  }

  @override
  void write(BinaryWriter writer, Conquista obj) {
    // Lógica para escrever os dados de Conquista em binário
    writer.writeInt(obj.id);
    writer.writeString(obj.nivel);
    writer.writeDouble(obj.porcentagem);
    writer.writeInt(obj.quantAcertos);
  }
}