import 'package:flutter/material.dart';

class PageRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text('This'),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('this'),
              new Text('Is'),
              new Text('Column')
            ],
          ),
          new Text('Row')
        ],
      ),
    );
  }
}
