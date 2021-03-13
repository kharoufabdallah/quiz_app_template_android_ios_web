
import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final Function restart;
  final int total;
  String get phrase {
    String phrase ;
    if(total==300) phrase = "Supreme!";
    if(total<300 && total>=200) phrase = "GOAT";
    if(total<200 && total>=100) phrase = "Not Bad";
    if(total<100) phrase = "Bad";

    return phrase;
  }
  @override
  Result (this.restart,this.total);
  Widget build(BuildContext context) {
    return Center(
      child:Column ( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
      Text("Your result is " + total.toString() + "\n" + phrase,style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: b),textAlign: TextAlign.center),
      ElevatedButton(onPressed: restart ,style: ElevatedButton.styleFrom(primary: Colors.white), child: Text("Restart Quiz", style:TextStyle( fontWeight: FontWeight.bold,color: Colors.red,fontSize: 25)))
        ],)
    );
  }
}