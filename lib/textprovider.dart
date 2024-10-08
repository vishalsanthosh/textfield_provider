import 'package:flutter/material.dart';

class TextProvider extends ChangeNotifier{
String _text="";
String get text=>_text;

void changeText(String value){
  _text=value;
  notifyListeners();
}

}