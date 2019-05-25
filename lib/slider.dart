import 'package:flutter/material.dart';

class PageSliderWidget extends StatefulWidget {
  @override
  _PageSliderWidgetState createState() => _PageSliderWidgetState();
}

class _PageSliderWidgetState extends State<PageSliderWidget> {

  double drag = 1.0;
  void methodDragVolume(value){
    setState(() {
      drag = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: new Text('Drag Slider'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Slider(value: drag,
                min: 1.0,
                max: 10.0,
                onChanged: (double val){
                  methodDragVolume(val);
                }),
            new Text('value : $drag')
          ],
        ),
      ),
    );
  }
}
