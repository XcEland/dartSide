import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
     final words = nouns.take(50).toList();
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index){
          final word = words[index];
          return ListTile(
            title:Text(word,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),),
            trailing: IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.favorite_border)),
            onTap: (){

            },
          );
      }),
    );
  }
}