import 'package:flutter/material.dart';

class Categories{
  static Row customRow(){
    Row row = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(
            "assets/icons/pineapple2.png",
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(
            "assets/icons/pineapple2.png",
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(
            "assets/icons/pineapple2.png",
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(
            "assets/icons/pineapple2.png",
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(
            "assets/icons/pineapple2.png",
          ),
        ),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(
            "assets/icons/pineapple2.png",
          ),
        ),
      ],
    );
    return row;
  }

}