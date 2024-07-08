import 'package:flutter/material.dart';

class PathiologyPage extends StatelessWidget {
  const PathiologyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pathiology'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text('Pathiology Page'),
      ),
    );
  }
}
