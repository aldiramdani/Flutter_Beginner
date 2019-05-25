import 'package:flutter/material.dart';
import 'page_ketiga.dart';
import 'animation.dart';
import 'imageurl.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PageImageAsset(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Column(
          children: <Widget>[
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PagePertama()));
              },
              child: Text('Page Pertama'),
              color: Colors.lightGreen,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageKedua()));
              },
              child: Text('Page Kedua'),
              color: Colors.red,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageKetiga()));
              },
              child: Text('Page Ketiga'),
              color: Colors.yellow,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class PagePertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Text('ini page pertama'),
      ),
    );
  }
}

class PageKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Text('ini page kedua'),
      ),
    );
  }
}

class PageWidgetContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        color:Colors.black,
        child: new Text('My Container'),
        width: 300.0,
        height: 500.0,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(120),
        foregroundDecoration: new BoxDecoration(
          color: Colors.lightGreen
        ),
      ),
    );
  }
}
