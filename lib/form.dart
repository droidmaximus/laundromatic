import 'package:flutter/material.dart';
import 'package:laundromatic/wash.dart';

import './main.dart';
import './SecondScreen.dart';

class form extends StatefulWidget {
  @override
  formstate createState() {
    return formstate();
  }
}

class formstate extends State<form> {
  final _formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final room = TextEditingController();
  final time = TextEditingController();
  final phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            onSaved: (newValue) => name.text = newValue!,
            controller: name,
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Enter your name',
              labelText: 'Name',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
          ),
          TextFormField(
            onSaved: (newValue) => room.text = newValue!,
            controller: room,
            decoration: const InputDecoration(
              icon: Icon(Icons.house),
              hintText: 'Enter your room number',
              labelText: 'Room No.',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please room number';
              }
              return null;
            },
          ),
          TextFormField(
            onSaved: (newValue) => time.text = newValue!,
            controller: time,
            decoration: const InputDecoration(
              icon: Icon(Icons.timer),
              hintText: 'Enter the time left',
              labelText: 'Time Left',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter time left';
              }
              return null;
            },
            keyboardType: TextInputType.number,
          ),
          TextFormField(
            onSaved: (newValue) => phone.text = newValue!,
            controller: phone,
            decoration: const InputDecoration(
              icon: Icon(Icons.phone),
              hintText: 'Enter your phone number',
              labelText: 'phone number',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter phone number';
              }
              return null;
            },
            keyboardType: TextInputType.number,
          ),
          Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => MyApp(
                    //         name.text, room.text, time.text, phone.text)));
                    // Scaffold.of(context).showSnackBar(SnackBar(
                    //     content: Text('Thank you for your submission')));

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Wash(
                                  name: name.toString(),
                                  room: room.toString(),
                                  time: time.toString(),
                                  phone: phone.toString(),
                                )));
                  }
                },
              )),
        ],
      ),
    );
  }
}

class details {
  var name;
  var room;
  var time;
  details(this.name, this.room, this.time);
}
