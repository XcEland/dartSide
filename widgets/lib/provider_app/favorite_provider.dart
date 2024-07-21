import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier{
  List<String> _words = [];
  List<String> get words => _words;

  void ToggleFavorite(String word){
    final isExit = _words.contains(word);
    if(isExit){
      _words.add(word);
    }else{
      _words.add(word);
    }
    notifyListeners();
  }


  void clearFavorite(){
    _words = [];
    notifyListeners();
  }
}