import 'package:flutter/material.dart';

class PageMainAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
        backgroundColor: Colors.green,
      ),
      body: GestureDetector(
        child: Hero(tag: 'ImageHero', child: Image.network('http://www.udacoding.com/wp-content/uploads/2019/05/Muadz-TV.png')),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){
            return DetailHeroAnimation();
          }));
        },
      ),
    );
  }
}

class DetailHeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Hero(tag: 'ImageHero', child: Image.network('http://www.udacoding.com/wp-content/uploads/2019/05/Muadz-TV.png')),
        onTap: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
