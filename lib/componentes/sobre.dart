import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sobre extends StatelessWidget {
final String inforsobre;

  const Sobre({super.key, required this.inforsobre}); 

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 18),
      height: Get.height,
      child: Column(
        children: [
          Text(
             "${inforsobre}",
            style: TextStyle(
              fontSize: 18,
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),
    );
  }
}
