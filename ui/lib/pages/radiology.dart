import 'package:flutter/material.dart';

class RadiologyPage extends StatelessWidget {
  const RadiologyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radiology'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text('Radiology Page'),
      ),
    );
  }
}
