import 'package:flutter/material.dart';
import 'package:quizdev/colors.dart';
import 'package:quizdev/telaconquista.dart';
import 'package:quizdev/telanivel.dart';
import 'package:quizdev/telaperfil.dart';

class TabNav extends StatefulWidget {
  final int telaatual;
  const TabNav({super.key, required this.telaatual});

  @override
  State<TabNav> createState() => _TabNavState();
}

class _TabNavState extends State<TabNav> {
  final List<Widget> listatela = [
    const TelaNivel(),
    const TelaConquista(),
    const TelaPerfil(),
  ];
  void next(int pos) {
    if (pos == 0) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute<void>(builder: (context) => listatela[pos]),
          (route) => false);
    } else {
      Navigator.push(
          context,
          MaterialPageRoute<void>(builder: (context) => listatela[pos]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colorsapp().violeta,
      fixedColor: Colors.white, unselectedItemColor: Colors.black,
      currentIndex: widget.telaatual,
      onTap: next,
      items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Níveis'),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Conquistas'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
      ],
    );
  }
}
