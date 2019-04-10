import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout practice',
      home: iconList(),
    );
  }

  Widget buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min, //packs children closely together
      children: [
        //building the array of children for the Row
        Expanded(
          flex: 2, //taking up twice as much space as the other siblings
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

  Widget iconList() {
    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w900,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.kitchen, color: Colors.green[300]),
                Text('Prep:'),
                Text('25 min'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.timer, color: Colors.green),
                Text('Cook:'),
                Text('1 hr'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.restaurant, color: Colors.green),
                Text('Feeds:'),
                Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );
    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.white),
      ],
    );
    final ratings = Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          stars,
          Text(
            "170 Reviews",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
    final leftColumn = Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: <Widget>[
          //  titleText,
          //subtitle,
          ratings,
          iconList,
        ],
      ),
    );
  }
}
