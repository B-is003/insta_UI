import 'package:flutter/material.dart';
class UserPosts extends StatelessWidget {
  final String name;

  UserPosts({required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(16.0),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Row(
                 children: [
                   Container(
                     width: 40,
                     height: 40,
                     decoration: BoxDecoration(
                       image: DecorationImage(image: AssetImage('lib/images/pic2.jpg'),
                       fit: BoxFit.fill),
                       shape: BoxShape.circle,
                     ),
                   ),
                   SizedBox(width: 10 ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(name, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                       ),
                       SizedBox(height: 5,),
                       Text('SomeWhere under the sky',style: TextStyle(color: Colors.grey[100],fontSize: 12),)
                     ],
                   ),
                 ],
               ),
                Icon(Icons.more_vert,color: Colors.white,),

              ],
            )),
        Container(
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/images/pic3.jpg"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite, color: Colors.red,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.mode_comment_outlined,color: Colors.white,),
                  ),
                  Icon(Icons.share,color:Colors.white),
                ],
              ),
              Icon(Icons.bookmark_border,color: Colors.white,)

            ],
          ),
        ),

        //liked by...
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
               Text('Liked by ',style: TextStyle(color: Colors.white)),
              Text("Miss_lucky",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Text(' and ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
              Text("1k others",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
            ],
          ),
        ),
        //caption..........
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 7),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(text: name, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                TextSpan(text: '  BEast mode on....I train to be a badAss...not to be a skinny bitch',style: TextStyle(color: Colors.white)),

              ]
            ),
          )
        ),

      ],
    );
  }
}


