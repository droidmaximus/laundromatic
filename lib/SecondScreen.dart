// ignore_for_file: file_names

import 'package:flutter/material.dart';

import './form.dart';

class SecondScreen extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LaundroMatic"),
        backgroundColor: Colors.amber,
      ),
      body:form(),
    );
  }
}