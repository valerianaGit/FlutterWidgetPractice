import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Text(
          "Hello World",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}

Widget buildRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        flex: 2,
     child: Image.asset("1.png"),
      ),
      Expanded(
     child: Icon(Icons.star),
      ),
      Expanded(
     child: Icon(Icons.subway),
      ),
    ],
  );
}

Widget buildColumn() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset("1.png"),
      Icon(Icons.cake),
      Icon(Icons.email),
    ],
  );
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
