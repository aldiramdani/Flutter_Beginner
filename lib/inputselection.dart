import 'package:flutter/material.dart';

class PageInputWidget extends StatefulWidget {
  @override
  _PageInputWidgetState createState() => _PageInputWidgetState();
}

class _PageInputWidgetState extends State<PageInputWidget> {
  String txt = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: new Text('Page Input Widget'),
      ),
      body: new Column(
        children: <Widget>[
          new TextField(
            onChanged: (String text) {
              setState(() {
                txt = text;
              });
            },
            decoration: new InputDecoration(
                hintText: 'Input Username', labelText: 'username'),
          ),
          SizedBox(height: 10,),
          new Text(txt)
        ],
      ),
    );
  }
}
