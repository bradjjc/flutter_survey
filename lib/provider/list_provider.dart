import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier {



  Map<String, bool> freeTime = {
    "Read": false,
    "Work out": false,
    "Draw": false,
    "Play video games": false,
    "Dance": false,
    "Watch movies": false,
  };


  Map<String, bool> superhero = {
    "Spider man (Avengers)": false,
    "Iroin man (Avengers)": false,
    "Uni-Kitty (Lego Movie)": false,
    "Captain Planet": false,
  };

  Map<String, bool> movie = {
    "Star Trek": false,
    "The social network": false,
    "Back to the future": false,
    "Outbreak": false,
  };

}