import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Estrelas extends StatelessWidget {
  final double porcentagem;
   Estrelas({required this.porcentagem});


  @override
  Widget build(BuildContext context) {
    int quantEstrela(){
      if (porcentagem == 20){
        return 1;
      }else if(porcentagem > 20 && porcentagem<=50) {
        return 2;
        }else if(porcentagem > 50) {
        return 3;
        }else{
          return 0;
        }
      }
      int recebeEstrela =quantEstrela();
    return Container(
      child: Row(
        children: 
          List.generate(recebeEstrela, (index) => Icon(Icons.star, color: Colors.yellow,),),
        


      )
    );
  }
}