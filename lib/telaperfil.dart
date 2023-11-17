import 'package:flutter/material.dart';
import 'package:quizdev/colors.dart';
import 'package:quizdev/tabnav.dart';

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
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:  [
                Center(
                  child: Text(
                    "Perfil",
                    style: TextStyle(color: Colors.black, fontSize: 23),
                  ),
                ),
                Divider(),],          
                
            ),
          ),
        
       ),
       
    
      bottomNavigationBar: TabNav(telaatual: 2,),
  
    );
     
  
  }
}