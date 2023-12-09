import 'package:flutter/material.dart';
import 'package:quizdev/componentes/colors.dart';
import 'package:quizdev/componentes/login.dart';
import 'package:quizdev/telas/telanivel.dart';

class CriarConta extends StatefulWidget {
   CriarConta({super.key});

  @override
  State<CriarConta> createState() => _CriarContaState();
 
}

class _CriarContaState extends State<CriarConta> {
   Login criarconta = Login();
  TextEditingController recebeNome = TextEditingController();
  TextEditingController recebeEmail = TextEditingController();
  TextEditingController recebeSenha = TextEditingController();
        
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colorsapp().violeta,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120, bottom: 34),
              child: Text(
                "CRIAR CONTA",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.only(
                  top: 60, bottom: 30, left: 40, right: 40),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   
                    TextField(
                      controller: recebeNome,
                      decoration: InputDecoration(
                        labelText: "Nome",
                        hintText: "Digite o nome",
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding( padding: const EdgeInsets.only(
                left: 40, right: 40), 
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // Campo de senha
                    TextField(
                      controller: recebeEmail,
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Digite o email",
                      ),
                    ),
                  ],
                ),
              ),
            ),

              Padding(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 30, left: 40, right: 40),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: recebeSenha,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Senha",
                        hintText: "Digite a senha",
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                  ],
                ),
              ),
            ),
           
            SizedBox(height: 90),
            Container(
              width: 200,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => TelaNivel()),
                  // );
                   criarconta.criarconta(recebeNome.text, recebeEmail.text, recebeSenha.text);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  minimumSize: Size(200, 45),
                ),
                child: Text(
                  "Criar",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
           
          
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}