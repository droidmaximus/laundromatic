// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import './wash.dart';


void main() {
  var name;
  var room;
  var phone;
  var time;
  runApp(MyApp(name,room,phone,time)); 
}

class MyApp extends StatelessWidget {

  var name;
  var room;
  var phone;
  var time;
  
  MyApp(this.name,this.room,this.phone,this.time);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
      
        appBar: AppBar(
          title: Text("LaundroMatic"),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Wash(name: '12',room: '12',phone: '12',time: '12'),
          ],
        )))
    );
  }
}

