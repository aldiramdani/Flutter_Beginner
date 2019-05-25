import 'package:flutter/material.dart';

class PageGridView extends StatefulWidget {
  @override
  _PageGridViewState createState() => _PageGridViewState();
}

class _PageGridViewState extends State<PageGridView> {
  List<int> itemGrid = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 10; i++) {
      itemGrid.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Grid View"),
        backgroundColor: Colors.greenAccent,
        titleSpacing: 80.0,
        elevation: 35.0,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.menu), onPressed: (){}),
          new IconButton(icon: Icon(Icons.data_usage), onPressed: (){})
        ],
      ),
      body: new GridView.builder(
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              color: Colors.red,
              child: new Padding(padding: const EdgeInsets.all(25)),
            );
          }),
    );
  }
}
