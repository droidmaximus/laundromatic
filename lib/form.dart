import 'package:flutter/material.dart';

class form extends StatefulWidget {  
  @override  
  formstate createState() {  
    return formstate();  
  }  
}  

class formstate extends State<form> {  
  final _formKey = GlobalKey<FormState>();  
  
  @override  
  Widget build(BuildContext context) {  
    return Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.person),  
              hintText: 'Enter your name',  
              labelText: 'Name',  
            ),  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.house),  
              hintText: 'Enter your room number',  
              labelText: 'Room No.',  
            ),  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
            icon: Icon(Icons.timer),  
            hintText: 'Enter the time left',  
            labelText: 'Time Left',  
            ),  
           ),  
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(  
                child: const Text('Submit'),  
                  onPressed: null,  
              )),  
        ],  
      ),  
    );  
  }  
}
