import 'package:delivery/pages/taxify.dart';
import 'package:delivery/widgets/location.dart';
import 'package:delivery/widgets/payment.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taxify Delivery',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(22, 142, 247, 1)),
        useMaterial3: true,
        // scaffoldBackgroundColor: const Color.fromRGBO(22, 142, 247, 1),
      ),
      home: PaymentWidget(),
    );
  }
}
