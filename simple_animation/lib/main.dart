import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

void main() {
  runApp(const MyApp());
}

enum AnimatedParameters { width, height }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: MirrorAnimation<MultiTweenValues<AnimatedParameters>>(
            curve: Curves.easeInOutSine,
            duration: Duration(milliseconds: 1000),
            tween: MultiTween<AnimatedParameters>()
              ..add(AnimatedParameters.height, ConstantTween(10.0), Duration(milliseconds: 500))
              ..add(AnimatedParameters.height, Tween(begin: 10.0, end: 200.0), Duration(milliseconds: 500))
              ..add(AnimatedParameters.width, Tween(begin: 10.0, end: 200.0), Duration(milliseconds: 500))
              ..add(AnimatedParameters.width, ConstantTween(200.0), Duration(milliseconds: 500)),
            builder: (context, child, value) {
              return Container(
                width: value.get(AnimatedParameters.width),
                height: value.get(AnimatedParameters.height),
                color: Colors.lightBlue,
              );
            },
          ),
        ),
      ),
    );
  }
}

