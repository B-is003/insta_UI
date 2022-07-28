import 'package:flutter/material.dart';

class AccountTab1 extends StatelessWidget {
  final List<String> userPost = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context,index){
      return Padding(padding: const EdgeInsets.all(2.0),
    child: Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('lib/images/im2.jpeg'),
        fit: BoxFit.fill
      )
    ),
    ),
    );
      },
    );
}
}
