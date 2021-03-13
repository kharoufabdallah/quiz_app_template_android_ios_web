import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'main.dart';


class Quiz extends StatelessWidget {
  @override

  final List<Map<String,Object>> questions;
  final int index;
  final Function answer_action;

  Quiz(this.questions,this.index,this.answer_action);
  Widget build(BuildContext context) {
    return Column(
      children: [ 
           Text(questions[index]['question'],
           style: TextStyle(fontSize: 30,color: b,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
           //error // Question(questions[0]),
            // ElevatedButton(onPressed: () { },child: Text("Thomas Edison")),
            // ElevatedButton(onPressed: () { },child: Text("Abdallah Kharouf")),
            // ElevatedButton(onPressed: () { },child: Text("Abdallah Kharouf")),
            // ElevatedButton(onPressed: () { },child: Text("Abdallah Kharouf"))

            ...(questions[index]['answer'] as List<Map<String , Object>>).map((ansss){
               return Answer(ansss['text'], ()=> answer_action(ansss['score']));
             }).toList(),
            //  Answer("Thom Adison",answer_action),
            //  Answer("Abdallah Kharouf",answer_action),
            //  Answer("Elon Musk",answer_action),
            //  Answer("Murad Alamdar",answer_action),
            ],
            
    );
  }
}