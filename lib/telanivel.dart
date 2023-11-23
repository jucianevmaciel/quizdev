import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizdev/botoesniveis.dart';
import 'package:quizdev/colors.dart';
import 'package:quizdev/perguntas.dart';
import 'package:quizdev/tabnav.dart';

class TelaNivel extends StatelessWidget {
  const TelaNivel({super.key});

  @override
  Widget build(BuildContext context) {
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
                    padding: EdgeInsets.only(top:90),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: BotoesNiveis(
                              texto: "Fácil",
                              cor: Colorsapp().violeta1, clicar: (){
                                Get.to(()=>Perguntas(nivel: 'Básico',));
                                },
                              ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: BotoesNiveis(
                              texto: "Médio",
                              cor: Colorsapp().violeta2, clicar: (){
                                Get.to(()=>Perguntas(nivel: 'Médio',));
                              },),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: BotoesNiveis(
                              texto: "Avançado",
                              cor: Colorsapp().violeta3, clicar: (){
                                Get.to(()=>Perguntas(nivel: 'Avançado',));
                              },),
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
      bottomNavigationBar: TabNav(telaatual: 0,),
    );
  }
}
