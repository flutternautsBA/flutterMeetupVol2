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
            SizedBox(
              height: 50.0,
            ),
            StaggeredAnimation(),
          ],
        ),
      ),
    );
  }
}

class StaggeredAnimation extends StatefulWidget {
  @override
  _StaggeredAnimationState createState() => _StaggeredAnimationState();
}

class _StaggeredAnimationState extends State<StaggeredAnimation>
    with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        _controller.forward();
        print('tapped');
      },
      child: Center(
        child: Container(
          child: AnimationWidgetStaggered(controller: _controller),
        ),
      ),
    );
  }
}

class AnimationWidgetStaggered extends StatelessWidget {
  final AnimationController controller;
  AnimationWidgetStaggered({this.controller})
      : width = Tween<double>(begin: 55.0, end: 80.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.0,
              0.500,
              curve: Curves.ease,
            ),
          ),
        ),
        height = Tween<double>(begin: 55.0, end: 80.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.5,
              1,
              curve: Curves.ease,
            ),
          ),
        );

  final Animation<double> width;
  final Animation<double> height;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Container(
      color: Colors.blue,
      width: width.value,
      height: height.value,
      child: Center(
        child: Text(
          'TAP ME!',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: _buildAnimation,
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
