import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book with Us'),
      ),
      body: Center(
        child: const Text('Our booking details at Kaributech are'),
      ),
    );
  }
}
