import 'package:flutter/material.dart';
import 'package:quizdev/colors.dart';
import 'package:quizdev/tabnav.dart';
import 'package:quizdev/inforperfil.dart';

class TelaPerfil extends StatefulWidget {
  const TelaPerfil({super.key});

  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  "Perfil",
                  style: TextStyle(color: Colors.black, fontSize: 23),
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
                    padding: EdgeInsets.only(top:20,left: 25),
                    child: Text("Juciane Vale Maciel",
                        style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 60, left: 8),
                child: InforPerfil(
                   texto: "Meus Dados",
                   cor: Colors.white,
                   iconData: Icons.list_alt,
                    ),),
        
              Padding(
                padding: EdgeInsets.only(top: 35, left: 8),
                child: InforPerfil(
                 texto: "Notificações",
                 cor: Colors.white,
                 iconData: Icons.notifications_none,
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
