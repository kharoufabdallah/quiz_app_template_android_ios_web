import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Answer extends StatelessWidget {
  final Function x;
  String ans;
  Answer(this.ans, this.x);  // constructor 
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     child: ElevatedButton(onPressed: x, style : ElevatedButton.styleFrom(primary : Colors.red), child: Text(ans),),
    );
  }
}