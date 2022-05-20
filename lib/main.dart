// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
              // child: FlutterLogo(),
              margin: EdgeInsets.all(100),
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                // gradient: LinearGradient(
                //   stops: [0.5, 0.6,7.0, 0.8],
                //   radius: 0.25,
                    //  colors: [Colors.pink.shade50, Colors.pink.shade500],
                //   colors: [Colors.blue,
                //   Colors.green,
                //   Colors.deepPurple,
                //   Colors.pink,
                  // ),
                image: DecorationImage(
                  image: NetworkImage('http://bit.ly/flutter_tiger'),
                  fit: BoxFit.scaleDown,
                ),  
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(50.0),
                //   bottomRight: Radius.circular(50.0),
                // ),
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
