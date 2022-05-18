// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 60,
            fontStyle: FontStyle.italic,
          ),
        ),
        // primaryColor: Colors.purple, 
        // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.orange),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Building Layouts with Flutter'),
        ),
        body: Column(
          children: [
            Container(
              // color: Colors.orangeAccent,
              width: 200.0,
              // child: Text("Imagine TV"),
              height: 200.0,
              margin: EdgeInsets.all(100),
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
              // child: Text('Area Calculator',
              //         //this style has higher precendence than ThemeData
              //        style: TextStyle(fontSize: 30),),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.lightbulb_outline),
          onPressed: (){
            print('You Rang?');
          },
        ),
        persistentFooterButtons: <Widget>[
          IconButton(onPressed: (){}, 
                     icon: Icon(Icons.add_comment),
          ),
          IconButton(onPressed: (){}, 
                     icon: Icon(Icons.add_alarm),
          ),
          IconButton(onPressed: (){}, 
                     icon: Icon(Icons.add_location),
          ),
        ],      
      ),
    );
  }
}
