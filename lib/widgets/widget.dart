import 'package:flutter/material.dart';

Widget brandName(String name){
  return Row(mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Text("Wallpaper", style: TextStyle(color : Colors.black, fontWeight: FontWeight.w600,fontSize: 22)),
    Text(name, style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w600, fontSize: 22))
  ],);
}