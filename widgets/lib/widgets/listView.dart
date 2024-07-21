import 'package:flutter/material.dart';

class listViewWidget extends StatelessWidget {
  const listViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, count){
          return Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
            ),
            );
        },
      ),
    );
  }
}