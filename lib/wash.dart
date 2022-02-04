// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import './SecondScreen.dart';

class wash extends StatelessWidget {
  double sidealign = 10;
  var name = 'yas';
  var room =  '124';
  var phone = 69420;
  var time = 69;
  wash(this.name, this.room, this.phone, this.time);
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
            width: 100,
            height: 100,
            margin: EdgeInsets.all(10),
            child: Image.asset(stopped),
          ),
          
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(name),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(room),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(phone.toString()),
                )
              ],
            ),
          ),
          Container(
          child: Text(time.toString()),
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