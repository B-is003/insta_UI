import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/account.dart';
import 'package:instagram_ui/pages/home.dart';
import 'package:instagram_ui/pages/likes.dart';
import 'package:instagram_ui/pages/reels.dart';
import 'package:instagram_ui/pages/search.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 2;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  // navigate arround the bottom navigation bar
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserLikes(),
    UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
          items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,), label: 'home'),
              BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.ondemand_video,color: Colors.white,), label: 'Reels'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.white,), label: 'Likes'),
              BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white,), label: 'account'),
          ]
      ),
    );
  }
}

