import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {

  final String text;

  BubbleStories({required this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(

            width: 65,
            height: 65,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
            image: new DecorationImage(
              image: new AssetImage("lib/images/picture.jpg"),
              fit: BoxFit.fill,
            ))
          ),
          SizedBox(height: 5,),
          Text(text,style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}
