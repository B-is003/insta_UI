import 'package:flutter/material.dart';

class AccountTab2 extends StatelessWidget {
  final List<String> userPost = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context,index){
        return Padding(padding: const EdgeInsets.all(2.0),
          child: Container(
            color: Colors.blue[100],
          ),
        );
      },
    );
  }
}
