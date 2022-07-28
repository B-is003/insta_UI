import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/util/bubble_stories.dart';
import 'package:instagram_ui/util/user_post.dart';

class UserHome extends StatelessWidget {
  final List people = ['The_badAss','The_bad','The_good','The_best','The_Ass'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    appBar: AppBar(
    backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Instagram',
            style:
            TextStyle(
              fontFamily: 'SupermercadoOne',
                color: Colors.white,
              fontSize: 28
            ),),
          Row(
            children: [
              Icon(Icons.add_box_outlined,color: Colors.white,size: 30,),
              Padding(
                padding: const EdgeInsets.only(right: 15.0,left: 22),
                child: Container(
                    height: 25,
                    width: 25,
                    child: Image(image: AssetImage('lib/images/logo.png'))),
              )

            ],
          )
        ],
      ),
    ),
    body: Column(
    children: [
    Container(
    height: 103,
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: people.length,
    itemBuilder: (context,index){
    return BubbleStories(text: people[index]);



    })
    ),
    //post..........

    Expanded(
    child: ListView.builder(itemCount:people.length,
    itemBuilder: (context, index){
    return UserPosts(
    name: people[index],
    );

    }),
    )
    ],
    ),
    );
  }
}
