import 'package:flutter/material.dart';
import 'package:instagram_ui/util/explore_gride.dart';


class UserSearch extends StatelessWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            padding:EdgeInsets.all(8.0),
            color: Colors.grey[600],
            child: Row(
              children: [
                Icon(Icons.search,
                color: Colors.grey[400],),
               Container(

                  child: Text('Search',
                  style: TextStyle(color: Colors.grey[400]),),
                )
              ],
            ),
          ),
        ),
      ),
      body: ExploreGrid(),
    );
  }
}
