import 'package:flutter/material.dart';
import 'package:instagram_ui/util/account_tab1.dart';
import 'package:instagram_ui/util/account_tab2.dart';
import 'package:instagram_ui/util/account_tab3.dart';
import 'package:instagram_ui/util/account_tab4.dart';
import 'package:instagram_ui/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Text('The_BiSwa',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 137.0,top: 6),
                child: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,),
              ),
              Row(
                children: [
                  Icon(Icons.add_box_outlined,color: Colors.white,),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0,left: 24),
                    child: Icon(Icons.menu,color: Colors.white,),
                  )

                ],
              )
            ],
          ),
        ),
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // profile pic ............
                        Container(
                          height: 85,
                         width: 85,
                            decoration:  BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage("lib/images/image.jpeg"),
                                  fit: BoxFit.fill,
                                ))
                        ),

                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text('23',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),),
                                  Text('Posts',style: TextStyle(color: Colors.white))
                                ],
                              ),


                          Column(
                            children: [
                              Text('2130',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),),
                              Text('Followers',style: TextStyle(color: Colors.white))
                            ],
                          ),  Column(
                            children: [
                              Text('50',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),),
                              Text('Followings',style: TextStyle(color: Colors.white))
                            ],
                          ),]),
                        ),
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(right: 208.0,top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Biswajit Borgohain',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),

                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Text('Flutter Developer....',style: TextStyle(color: Colors.white),),
                      ),
                      Text('blbiswa200@gmail.com',style: TextStyle(color: Colors.blue),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(child: Text('Edit Pofile',style: TextStyle(color: Colors.white),)),
                            ),
                            decoration:
                            BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(child: Text('Add Tools',style: TextStyle(color: Colors.white),)),
                            ),
                            decoration:
                            BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(child: Text('Insights',style: TextStyle(color: Colors.white),)),
                            ),
                            decoration:
                            BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        BubbleStories(text: 'HighLight1'),
                        BubbleStories(text: 'HighLight1'),
                        BubbleStories(text: 'HighLight1'),
                        BubbleStories(text: 'HighLight1'),

                      ],
                    ),
                  ),
                TabBar(tabs: [
                  Tab(icon: Icon(Icons.grid_on,color: Colors.white,),
                  ),
                  Tab(icon: Icon(Icons.play_arrow_outlined,size: 35,color: Colors.white,),
                  ),
                  Tab(icon: Icon(Icons.personal_video,color: Colors.white),
                  ),
                  Tab(icon: Icon(Icons.person,color: Colors.white),
                  ),
                ]),
                
                Expanded(child: TabBarView(
                  children: [
                  AccountTab1(),
                  AccountTab2(),
                  AccountTab3(),
                  AccountTab4()])

                ) ],
            ),
           ),
          ),
    );
  }
}
