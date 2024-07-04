import 'dart:io';

import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    int _num = 170;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.blue[200],
                  margin: EdgeInsets.all(4),
                  child: Text(
                    'Strawberry Pavlova',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: Colors.blue[200],
                  margin: EdgeInsets.all(4),
                  child: Text(
                    "ok so this is super\ninteresting and funny\nto do at the same time.\nSo l am still a beginner\nand lm trying to \ngrasp flutter as fast as l can.\n Wish me the best of luck \nand hoep ll will make \nthis work out. ok so",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Container(
                  color: Colors.blue[200],
                  margin: EdgeInsets.all(4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ),
                        ],
                      ),
                      Text('$_num Reviews'),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.propane_sharp,
                          color: Colors.green,
                          size: 12,
                        ),
                        Text('PREP'),
                        Text('15 min'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.propane_sharp,
                          color: Colors.green,
                          size: 12,
                        ),
                        Text('PREP'),
                        Text('15 min'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.propane_sharp,
                          color: Colors.green,
                          size: 12,
                        ),
                        Text('PREP'),
                        Text('15 min'),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Image.asset(
              'images/cake.jpg',
              height: MediaQuery.of(context).size.height * 0.4,
              width: 300,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
