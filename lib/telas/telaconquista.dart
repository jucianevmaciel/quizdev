import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quizdev/bancodedados/bancoConquista/conquista.dart';
import 'package:quizdev/bancodedados/bancoConquista/hiveconfig.dart';
import 'package:quizdev/componentes/inforperguntas.dart';
import 'package:quizdev/componentes/tabnav.dart';

class TelaConquista extends StatefulWidget {
  const TelaConquista({super.key});

  @override
  State<TelaConquista> createState() => _TelaConquistaState();
}

class _TelaConquistaState extends State<TelaConquista> {
  List<Conquista> conquista = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    atualizaConquista();
  }

  Future<void> atualizaConquista() async {
    try {
      List<Conquista> conquistaCarregadas = await HiveConfig.mostraConquista();
      setState(() {
        conquista = conquistaCarregadas;
      });
    } catch (e) {
      print("Erro ze mane");
    }
  }

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
                  "Conquistas",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Divider(),
              for (Conquista conquist in conquista)
                Container(
                  child: Row(
                    children: [
                      Text(conquist.nivel),
                      Estrelas(
                        porcentagem: conquist.porcentagem,
                      ),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
      bottomNavigationBar: TabNav(
        telaatual: 1,
      ),
    );
  }
}
