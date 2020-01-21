import 'package:flutter/material.dart';
import 'package:flutter_meetup/secondPage.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade900,
        title: Text('My CV'),
      ),
      body: Builder(
        builder: (context) => Container(
          width: double.infinity,
          margin: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TopPart(),
              Divider(
                color: Colors.white,
                height: 10.0,
              ),
              BottomPart(),
            ],
          ),
        ),
      ),
    );
  }
}

class TopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Hero(
          tag: 'Flutter',
          child: CircleAvatar(
            backgroundImage: AssetImage('images/logo.jpg'),
            radius: 50.0,
          ),
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
      ],
    );
  }
}

class BottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
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
        ),
        SizedBox(
          height: 40.0,
        ),
        RaisedButton(
          elevation: 20.0,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ));
          },
          child: Text('Let\'s go to next Page!'),
        )
      ],
    );
  }
}
