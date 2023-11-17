import 'package:flutter/material.dart';
import 'package:quizdev/tabnav.dart';

class TelaConquista extends StatefulWidget {
  const TelaConquista({super.key});

  @override
  State<TelaConquista> createState() => _TelaConquistaState();
}

class _TelaConquistaState extends State<TelaConquista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Text("juciane", style: TextStyle(color: Colors.black),)),
      bottomNavigationBar: TabNav(telaatual: 1),
    );
    
  }
}