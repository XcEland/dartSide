import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgets/provider_app/favorite_provider.dart';
import 'package:widgets/provider_app/home.dart';
import 'package:widgets/widgets/drawer.dart';
import 'package:widgets/widgets/listView.dart';
import 'package:widgets/widgets/stack.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title:'Flutter Widgets',
  //     theme: ThemeData(
  //       colorScheme: ColorScheme.fromSwatch(
  //         primarySwatch: Colors.amber,
  //       )
  //     ),
  //     home: HomePage(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> FavoriteProvider(),
    );
  }
}