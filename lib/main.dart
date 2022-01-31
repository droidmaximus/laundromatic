import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}
class FirstScreen extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LaundroMatic"),
        backgroundColor: Colors.amber,
      ),
      body: Column(children:<Widget> [
        wash(),
        Padding(padding: EdgeInsets.all(10)),

      ],)
    );
  }
}

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

class wash extends StatefulWidget {  
  @override  
  washstate createState() {  
    return washstate();  
  }  
}  

class washstate extends State<wash>{
  final String stopped = 'assets/images/washing-machine-static.png';
  final String running = 'assets/images/washing-machine-working.gif';
  Widget build(BuildContext context) { 
    return Container ( 
      margin: EdgeInsets.all(40), 
      width: double.infinity,
      color: Colors.amber[200],
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
          child:  Text('Name : John Doe' ),
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
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              child: Text("add me"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
                child: Text('notify me'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Notification Set!')),
                  );
                }
            )
          ),
        ]
      ),
    );
  }
}

class details {
  String name;
  String room;
  int time;
  details(this.name, this.room, this.time);  
}