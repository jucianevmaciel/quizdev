import 'package:flutter/material.dart';

class InforPerfil extends StatelessWidget {
  final String texto;
  final Color cor;
  final IconData iconData; // Alterado para IconData em vez de Icon
  const InforPerfil({
    Key? key, // Corrigido o super.key para Key? key
    required this.texto,
    required this.cor,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 80,
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black, // Cor da borda
          width: 0.2,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(
              iconData,
              size: 30, // Ajuste o tamanho do ícone conforme necessário
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Text(
              texto,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
