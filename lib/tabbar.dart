import 'package:flutter/material.dart';

class PageTabBar extends StatefulWidget {
  @override
  _PageTabBarState createState() => _PageTabBarState();
}

class _PageTabBarState extends State<PageTabBar>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar Apps'),
        backgroundColor: Colors.green,
        bottom: new TabBar(controller: tabController, tabs: <Widget>[
          new Tab(
            icon: new Icon(Icons.home),
          ),
          new Tab(
            icon: new Icon(Icons.dashboard),
          ),
          new Tab(
            icon: new Icon(Icons.data_usage),
          ),
          new Tab(
            icon: new Icon(Icons.close),
          ),
        ]),
      ),
      body: new TabBarView(controller: tabController, children: <Widget>[
        new Center(
          child: new Text('Welcome To Home'),
        ),
        new Center(
          child: new Text('Welcome To Dashboard'),
        ),
        new Center(
          child: new Text('Welcome To Data Usage'),
        ),
        new Center(
          child: new Text('Welcome To Close'),
        ),
      ]),
    );
  }
}
