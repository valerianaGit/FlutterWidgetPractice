import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: new Text('Flutter Layout Demo'),
        ),
        body: Center(
          child: new Text('Hello World'),
        ),
      ),
    );
  }
}
/*
class MyHomePage extends StatefulWidget {
  @override
Widget build(BuildContext context) {
  return MaterialApp(
title: 'Hello World',
Widget new Image.asset('1.png'),
  );
}
}
*/
