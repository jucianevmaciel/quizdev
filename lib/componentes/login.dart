import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quizdev/telas/telanivel.dart';

class Login extends GetxController {
  static Login instance = Get.find();

  void login(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);

      Get.to(
        () => TelaNivel(),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
  void criarconta(String nome, String email, String senha) async{
   try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: senha,
  
  );

  // Após criar o usuário com sucesso, você pode adicionar o nome ao perfil
  await credential.user?.updateProfile(displayName: nome);

  // Agora você pode acessar o nome assim:
  final nomeDoUsuario = FirebaseAuth.instance.currentUser?.displayName;
   Get.to(
        () => TelaNivel(),
      );

  print('Usuário criado com sucesso. Nome do usuário: $nomeDoUsuario');
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('A senha fornecida é muito fraca.');
  } else if (e.code == 'email-already-in-use') {
    print('A conta já existe para este e-mail.');
  }
} catch (e) {
  print(e);
}

  }
}
