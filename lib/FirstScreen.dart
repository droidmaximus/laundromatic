// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:laundromatic/form.dart';

import './wash.dart';

class FirstScreen extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LaundroMatic"),
        backgroundColor: Colors.amber,
      ),
      body: Column(children:<Widget> [
        wash('Name1', 'Phone1', 'Time1', 'Room1'),
        Padding(padding: EdgeInsets.all(10)),

      ],)
    );
  }
}
