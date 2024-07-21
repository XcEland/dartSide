import 'package:flutter/material.dart';

class PopUpMenuWidget extends StatefulWidget {
  const PopUpMenuWidget({super.key});

  @override
  State<PopUpMenuWidget> createState() => _PopUpMenuWidgetState();
}

class _PopUpMenuWidgetState extends State<PopUpMenuWidget> {
  String titLe = 'Title';
  String item1 = 'Item1';
  String item2 = 'Item2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        title: Text(titLe),
        trailing: PopupMenuButton(
          itemBuilder: (context) =>[
            PopupMenuItem(
              child:Text(item1),
              value: item1,),
            PopupMenuItem(
              child: Text(item2),
              value: item2,)
          ],
          onSelected: (String newValue){
            setState(() {
              titLe = newValue;
            });
          },),
      ),
    );
  }
}