import 'package:flutter/material.dart';

class PageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: new Column(
        children: <Widget>[
          new RaisedButton(onPressed: (){},child: Text('Button Raised'),),
          new FlatButton(onPressed: (){}, child: Text('Button Flat')),
          new MaterialButton(onPressed: (){},child: Text('Material Button'),color: Colors.green,textColor: Colors.white,)
        ],
      ),
    );
  }
}
