import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final days = 32;
    final astro = "LEO";
    return Scaffold(
        appBar: AppBar(
          title: Text('Skooltime'),
        ),
        body: Center(
          child: Container(
            child: Text('Saurabh Grewal is $days years old, and he is a $astro'),
          ),
        ),
      );
  }
}