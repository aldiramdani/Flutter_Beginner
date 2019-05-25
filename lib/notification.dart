import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class PageAlertDialog extends StatefulWidget {
  @override
  _PageAlertDialogState createState() => _PageAlertDialogState();
}

class _PageAlertDialogState extends State<PageAlertDialog> {

  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

  SimpleDialog simpleDialog;

  void showSnackBar(){
    _key.currentState.showSnackBar(new SnackBar(content: new Text('This is snackbar')));
  }

  void showSimpleDialog(){
    simpleDialog = new SimpleDialog(
      title: new Text('Warning'),
      children: <Widget>[
        new SimpleDialogOption(
          child: Text('Jakarta'),
          onPressed: (){
            print('Jakarta');
          },
        ),
        new SimpleDialogOption(
          child: Text('Padang'),
          onPressed: (){
            print('Padang');
          },
        ),
        new SimpleDialogOption(
          child: Text('Close'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ],
    );
    showDialog(context : context,child : simpleDialog);
  }

  void showAlertDialog(){
    showDialog(context: context,child: new AlertDialog(
      title: Text('Warning'),
      content: Text('Anda Yakin ingin keluar ?'),
      actions: <Widget>[
        new IconButton(icon: Icon(Icons.close), onPressed: (){
          Navigator.pop(context);
        }),
        new IconButton(icon: Icon(Icons.check), onPressed: (){
          Navigator.pop(context);
        }),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Notification Widget'),
        backgroundColor: Colors.green,
      ),
      key: _key,
      body: new Center(
       child: new Column(
         children: <Widget>[
           new RaisedButton(onPressed: (){
             showSimpleDialog();
           },
           child: new Text('Show Alert Dialog'),
           ),
           new MaterialButton(onPressed: (){
             showAlertDialog();
           },
           child: Text('Alert Dialog'),
             color: Colors.blue,
             textColor: Colors.white,
           ),
           new MaterialButton(onPressed: (){
             showSnackBar();
           },
             child: Text('Show Snackbar'),
             color: Colors.orange,
             textColor: Colors.white,
           ),
           new MaterialButton(onPressed: (){
             Toast.show('Ini Toast', context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,backgroundColor: Colors.green,textColor: Colors.white);
           },
             child: Text('Show Toast'),
             color: Colors.purple,
             textColor: Colors.white,
           ),
         ],
       ),
      ),
    );
  }
}
