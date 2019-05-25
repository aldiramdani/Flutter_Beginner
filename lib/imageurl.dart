import 'package:flutter/material.dart';

class PageImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Pada Asset'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Image.asset('gambar/image.jpg',height: 200, width: 200,),
          Text('Gambar'),
          SizedBox(
            height: 25.0,
          ),
          Text(
            'Image from URL',
            style: TextStyle(
                fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.network(
                'https://i.pinimg.com/originals/ae/ec/77/aeec77e51df667f92b899c2232b94bcb.jpg',
                height: 150,
                width: 150,
              ),
              Image.network(
                'https://pbs.twimg.com/profile_images/1129759670938329091/T37gEm71_400x400.png',
                height: 150,
                width: 150,
              ),
            ],
          )
        ],
      ),
    );
  }
}
