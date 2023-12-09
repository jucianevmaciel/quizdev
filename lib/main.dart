import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive/hive.dart';
import 'package:quizdev/bancodedados/bancoConquista/conquistaadap.dart';
import 'package:quizdev/bancodedados/bancoConquista/hiveconfig.dart';
import 'package:quizdev/componentes/colors.dart';
import 'package:quizdev/componentes/login.dart';
import 'package:quizdev/telas/telalogin.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(Login()));
  runApp(const MyApp());
  await HiveConfig.start();
  Hive.registerAdapter(ConquistaAdapter());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colorsapp().violeta),
          useMaterial3: true,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 56),
                  backgroundColor: Colorsapp().violeta))),
      home: const TelaLogin(),
    );
  }
}
