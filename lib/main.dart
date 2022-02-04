// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import './FirstScreen.dart';


void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  var name = 'yas';
  var room =  '124';
  var phone = 69420;
  var time = 69;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class details {
  String name;
  String room;
  int time;
  details(this.name, this.room, this.time);  
}