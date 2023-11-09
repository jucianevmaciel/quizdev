import 'package:flutter/material.dart';
import 'package:quizdev/botoesniveis.dart';

class TelaNivel extends StatelessWidget {
  const TelaNivel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child:const Center(
            child:Padding(padding: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Níveis",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                SizedBox(height: 50),
                BotoesNiveis(texto: "Fácil", cor: Colors.pink),

                SizedBox(height: 50),
                BotoesNiveis(texto: "Médio", cor: Colors.purple),

                SizedBox(height: 50),
                BotoesNiveis(texto: "Avançado", cor: Colors.orange)
          
              ],
            ),),
          )),
    );
  }
}
