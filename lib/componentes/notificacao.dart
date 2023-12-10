import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Notificacoes extends StatelessWidget {
  final String notiEmail;
  final String notiNome;
  const Notificacoes({
    super.key,
    required this.notiEmail,
    required this.notiNome,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      child: Column(
        children: [
          Text(
            "Nome: ${notiNome}",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins",
            ),
          ),
          Text(
            "Email: ${notiEmail}",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),
    );
  }
}
