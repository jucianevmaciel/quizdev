import 'package:flutter/material.dart';
import 'package:quizdev/componentes/colors.dart';

class QuizInfor extends StatefulWidget {
  final String titulo;
  final String nivel;
  final VoidCallback clicar;
  bool isSelected;
  bool isCorrect;
  final bool perguntarespondida ;


  QuizInfor({
    Key? key,
    required this.titulo,
    required this.nivel,
    required this.clicar,
    this.isSelected = false,
    this.isCorrect = false,
    required this.perguntarespondida,
  }) : super(key: key);

  @override
  State<QuizInfor> createState() => _QuizInforState();
}

class _QuizInforState extends State<QuizInfor> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () {
        if(!widget.perguntarespondida && widget.clicar!=null){
          setState(() {
            widget.isSelected =!widget.isSelected;
          });
          widget.clicar();

        }
        },
        child: Container(
          height: 80,
          child: Card(
            color: widget.isSelected
                ? (widget.isCorrect ? Colors.green : Colors.red)
                : widget.nivel == "facil"
                    ? Colorsapp().violeta1 // Cor padrão quando não selecionado
                    : widget.nivel == "medio"
                        ? Colorsapp().violeta2 // Cor padrão quando não selecionado
                        : Colorsapp().violeta3, // Cor padrão quando não selecionado
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  widget.titulo,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
