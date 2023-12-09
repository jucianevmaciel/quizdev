import 'package:flutter/material.dart';
import 'package:quizdev/componentes/colors.dart';
import 'package:quizdev/componentes/login.dart';
import 'package:quizdev/telas/telacriarconta.dart';
import 'package:quizdev/telas/telanivel.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  Login login = Login();
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
                "LOGIN",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            Text(
              "Bem vindo ao QUIZDEV",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 90, bottom: 30, left: 40, right: 40),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Campo de e-mail
                    TextField(
                      controller: recebeEmail,
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Digite o email",
                         suffixIcon: Icon(Icons.email_rounded),
                         
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
            GestureDetector(
              onTap: () {
                print("Esqueceu a senha?");
              },
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 180),
                      child: Text(
                        "Esqueceu a senha?",
                        style: TextStyle(color: Colors.white, fontSize: 16),
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
                  login.login(recebeEmail.text, recebeSenha.text);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  minimumSize: Size(200, 45),
                ),
                child: Text(
                  "Entrar",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => CriarConta()),
                );
              },
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Não tem Conta? Criar",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
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
