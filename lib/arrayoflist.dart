import 'package:flutter/material.dart';

class PageListWidget extends StatefulWidget {
  @override
  _PageListWidgetState createState() => _PageListWidgetState();
}

class _PageListWidgetState extends State<PageListWidget> {

  List<int> item = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i = 0 ; i<25;i++){
      item.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView.builder(
        itemCount : item.length,
        itemBuilder: (BuildContext context, int index){
          return new ListTile(
            title: new Text('Item Nomor : $index' ),
            trailing: new Icon(Icons.print),
          );
        }),
    );
  }
}
