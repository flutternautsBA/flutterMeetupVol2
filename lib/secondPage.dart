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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimationWidget(),
            SizedBox(
              height: 50.0,
            ),
            Hero(
              tag: 'Flutter',
              child:
                  CircleAvatar(backgroundImage: AssetImage('images/logo.jpg')),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimationWidget extends StatefulWidget {
  @override
  _AnimationWidgetState createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget> {
  double width = 25.0;
  double height = 25.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AnimatedContainer(
          width: width,
          height: height,
          color: Colors.deepPurple,
          duration: Duration(seconds: 1),
          child: Container(),
        ),
        RaisedButton(
          child: Text('Resize my container'),
          onPressed: () {
            setState(() {
              width += 30;
              height += 30;
            });
          },
        )
      ],
    );
  }
}
