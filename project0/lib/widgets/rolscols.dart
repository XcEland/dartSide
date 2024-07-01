import 'package:flutter/material.dart';

class RolsCols extends StatelessWidget {
  const RolsCols({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text('Rows and Columns')),
      body: Container(
        height: h,
        width: w,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.red,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.blue,
            ),
            Container(height: 60, width: 60, color: Colors.green),
            Container(height: 60, width: 60, color: Colors.black),
            Container(height: 60, width: 60, color: Colors.purple),
          ],
        ),
        // child: Wrap(
        //     direction:
        //         Axis.vertical, //first covers space in the vertical direction
        //     alignment: WrapAlignment.end,
        //     children: [
        //       Container(height: 60, width: 60, color: Colors.red),
        //       Container(height: 60, width: 60, color: Colors.blue),
        //       Container(height: 60, width: 60, color: Colors.green),
        //       Container(height: 60, width: 60, color: Colors.black),
        //       Container(height: 60, width: 60, color: Colors.purple),
        //     ]),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children:[
        //     Container(height: 60, width: 60, color: Colors.red),
        //     Container(height: 60, width: 60, color: Colors.blue),
        //     Container(height: 60, width: 60, color: Colors.green),
        //     Container(height: 60, width: 60, color: Colors.black),
        //     Container(height: 60, width: 60, color: Colors.purple),
        //   ],
        // ),
      ),
    );
  }
}
