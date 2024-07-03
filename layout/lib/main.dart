import 'package:flutter/material.dart';
import 'pages/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medicine',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SearchPage(),
    );
  }
}
