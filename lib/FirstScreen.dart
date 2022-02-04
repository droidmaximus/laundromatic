// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:laundromatic/form.dart';

import './wash.dart';

class FirstScreen extends StatelessWidget {
  var name;
  var room;
  var phone;
  var time;
  //constructor
  FirstScreen({this.name, this.room, this.phone, this.time});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LaundroMatic"),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            wash(name, phone, time, room),
            wash('Name2', 'Phone2', 69 ,420),
          ],
        )));
  }
}
