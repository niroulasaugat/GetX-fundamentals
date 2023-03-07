
import 'package:flutter/material.dart';

class OpacityRange extends ChangeNotifier{

  double _progress = 0.73;

  double get progress => _progress;

  void newProgress(double val){

    _progress = val;
    notifyListeners();
    print(_progress);

  }

}

class FavouriteProvider extends ChangeNotifier{

  List<int> _SelectedItem = [];

  List<int> get SelectedItem => _SelectedItem;

  void addFavItem(int value){
    _SelectedItem.add(value);
    print(_SelectedItem);
    notifyListeners();

  }
  void removeFavItem(int value){
    _SelectedItem.remove(value);
    print(_SelectedItem);
    notifyListeners();
  }
}