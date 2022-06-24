import 'package:flutter/material.dart';
import 'package:untitled/views/history.dart';
import 'package:untitled/views/search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white10,
          leading: IconButton(
            icon: Icon(Icons.remove_red_eye_sharp, color: Colors.black,),
            color: Colors.black,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => History()));
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Search()));
              },
            )
          ],
        ),
        body: Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}
