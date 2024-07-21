import 'package:flutter/material.dart';
import 'package:widgets/widgets/drawer.dart';
import 'package:widgets/widgets/listView.dart';
import 'package:widgets/widgets/stack.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter Widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.amber,
        )
      ),
      home: listViewWidget(),
    );
  }
}