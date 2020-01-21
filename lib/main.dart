import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Meetup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade900,
          title: Text('My CV'),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/logo.jpg'),
                radius: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'My Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Comforta',
                    fontSize: 30.0,
                  ),
                ),
              ),
              Text(
                'My Position',
                style: GoogleFonts.pacifico(
                  textStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Divider(
                color: Colors.white,
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Chip(
                      label: Text('I\'m chip'),
                    ),
                    Chip(
                      label: Text('I\'m chip'),
                    ),
                    Chip(
                      label: Text('I\'m chip'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
