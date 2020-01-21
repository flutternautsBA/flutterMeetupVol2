import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade900,
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text('Welcome to Second Page'),
      ),
    );
  }
}
