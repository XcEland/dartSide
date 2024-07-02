import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botton'),
      ),
      body: Column(
        children: [TextButton(child: Text("Press me"))],
      ),
    );
  }
}
