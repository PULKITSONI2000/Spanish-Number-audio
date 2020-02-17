import 'package:flutter/material.dart';

class NumberAudio {
  String audioURI;
  MaterialColor buttonColor;
  String btnText;

  NumberAudio(String audioURI, MaterialColor buttonColor, String number){
    this.audioURI = audioURI;
    this.buttonColor = buttonColor;
    this.btnText = number;
  }
}