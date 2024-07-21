import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          // Container(
          //   height: 400,
          //   width: 300,
          //   color: Colors.blue[400],
          // ),
          // Container(
          //   height: 300,
          //   width: 200,
          //   color: Colors.blue[300],
          // ),
          // Container(
          //   height: 200,
          //   width: 100,
          //   color: Colors.blue[200],
          // ),
          Container(
            color: Color.fromRGBO(2, 147, 249, 1),
            alignment: AlignmentDirectional(-1,0),
            child: Container(
              alignment: AlignmentDirectional.bottomCenter,
              height: 400,
              width: 400,
              color: Colors.pink[200],
              child: Container(
                height: 200,
                width: 200,
                color: Colors.orange[400],
                alignment: AlignmentDirectional.center,
                child: Container(
                  transform: Matrix4.rotationZ(0.45),
                  height: 50,
                  width: 50,
                  color: Colors.deepPurple[400],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}