// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import './SecondScreen.dart';

class wash extends StatefulWidget {  
  @override  
  washstate createState() {  
    return washstate();  
  } 
  var name;
  var phone;
  var time;
  var room;
  wash(this.name,this.phone,this.time,this.room, {Key? key}) : super(key: key);

}  

class washstate extends State<wash>{
  double sidealign = 10;
  final String stopped = 'assets/images/washing-machine-static.png';
  final String running = 'assets/images/washing-machine-working.gif';
  Widget build(BuildContext context) { 
    return Container ( 
      decoration: BoxDecoration(
        color: Colors.amber[200],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(
              10.0,
              10.0, 
            ),
          ),
        ],
      ),
      margin: EdgeInsets.only(top:40, left: sidealign, right: 40, bottom:40), 
      width: double.infinity,
      child: Column (  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[  
          Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            child: Image.asset(stopped),
          ),
          
          Container(
          child:  Text('Name1'),
          margin: EdgeInsets.all(10),
          ),
          Container(
          child: Text('Room No. : 101'),
          margin: EdgeInsets.all(10),
          ),
          Container(
          child: Text('Time left : 10 minutes'),
          margin: EdgeInsets.all(10),
          ),
          Container(
          child: Text('Phone number : +91-1234567890'),
          margin: EdgeInsets.all(10),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonTheme(
                minWidth: 80,
                child: ElevatedButton(
                  child: Text("add"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                  },
                ),
              ),
              ButtonTheme(
                minWidth: 80,
                child: ElevatedButton(
                    child: Text('notify'),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Notification Set!')),
                      );
                    }
                )
              ),
            ],
          )
        ]
      ),
    );
  }
}