import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

Widget productivityCell() {
  var book = Container(
    padding: EdgeInsets.all(8.0),
    child: Icon(Icons.book, color: Colors.green),
  );
  var category = Text(
    'Category',
    style: TextStyle(
      fontFamily: 'Georgia',
      fontWeight: FontWeight.w500,
      fontSize: 30.0,
    ),
  );
  var subCategory = Text(
    'SubCategory',
    style: TextStyle(
      fontFamily: 'Georgia',
      fontWeight: FontWeight.w500,
      fontSize: 20.0,
    ),
  );
  final titleColumn = Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[category, subCategory],
  );
  final cellRow = Row(
//book + title column
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: <Widget>[book, titleColumn],
      );
  final cellCard = Card(
      //include cell row in here, so I get the rounded corners from Card
      );
  return Scaffold(
    appBar: AppBar(
      title: Text('My Organized Life'),
    ),
    body: Center(
      child: Container(
        margin: EdgeInsets.all(16.0),
        height: 50,
        child: Card(
            child: Container(
          padding: EdgeInsets.all(16.0),
          child: cellCard,
//cellRow with insets of 16  and rounded corners -card
        )),
      ),
    ),
  );
}
