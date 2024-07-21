import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
      margin: EdgeInsets.all(32),
      alignment: Alignment.center,
      width: 200,
      height: 400,
      child: Text('Hello Mcdee', style: TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 243, 241, 241),
      ),),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.deepOrange,
      ),
      
    );
  }
}