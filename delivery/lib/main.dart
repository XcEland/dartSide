import 'package:delivery/basics/container.dart';
import 'package:delivery/basics/drawer.dart';
import 'package:delivery/basics/popupMenu.dart';
import 'package:delivery/basics/stack.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.amber,
        ),
        textTheme:          ,
      ),
      darkTheme: ,
      home: PopUpMenuWidget(),
    );
  }
}