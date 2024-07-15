import 'package:delivery/widgets/PackageWidget.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PackageWidget()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(22, 142, 247, 1),
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
          minimumSize: const Size(400, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Set border radius here
          ),
        ),
        child: const Text(
          'Next',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
