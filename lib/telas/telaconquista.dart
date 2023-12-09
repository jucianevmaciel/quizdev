import 'package:flutter/material.dart';
import 'package:quizdev/componentes/tabnav.dart';



class TelaConquista extends StatefulWidget {
  const TelaConquista({super.key});

  @override
  State<TelaConquista> createState() => _TelaConquistaState();
}

class _TelaConquistaState extends State<TelaConquista> {
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
                  "Conquistas",
                  style: TextStyle(color: Colors.black, fontSize: 23),
                ),
              ),
              Divider(),

              
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