import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizdev/componentes/login.dart';
import 'package:quizdev/componentes/notificacao.dart';
import 'package:quizdev/componentes/tabnav.dart';
import 'package:quizdev/componentes/inforperfil.dart';
import 'package:quizdev/telas/telalogin.dart';

class TelaPerfil extends StatefulWidget {
  const TelaPerfil({super.key});

  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {
  Login login = Login();
  void notificacoes() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Container(
              width: Get.width,
              height: Get.height,
              child: Notificacoes(
                notiEmail: login.user?.email ?? "usuario",
                notiNome: login.user?.displayName ?? "usuario",
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  "Perfil",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 46,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/perfil.png"),
                        radius: 44,
                        child: Padding(
                            padding: EdgeInsets.only(top: 50, left: 70),
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 216, 194, 220),
                              radius: 10,
                              child: Icon(
                                Icons.edit,
                                size: 15,
                                color: Colors.black,
                              ),
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 25),
                    child: Text(
                      login.user?.displayName ?? "usuario",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 60, left: 8),
                child: InforPerfil(
                  texto: "Meus Dados",
                  cor: Colors.white,
                  iconData: Icons.list_alt,
                   clicar: () => notificacoes(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 35, left: 8),
                child: InforPerfil(
                  texto: "Sobre",
                  cor: Colors.white,
                  iconData: Icons.help_outline,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 35, left: 8),
                child: InforPerfil(
                  texto: "Sair",
                  cor: Colors.white,
                  clicar: () => login.sairLogin(),
                  iconData: Icons.arrow_back,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: TabNav(
        telaatual: 2,
      ),
    );
  }
}
