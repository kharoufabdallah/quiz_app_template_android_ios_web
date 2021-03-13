import 'package:Quiz_app/answer.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';


main () =>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
  Color w = Colors.white;
  Color b = Colors.black;
class _MyAppState extends State<MyApp> {

  bool isSwitched = false;
int index= 0;
String phrase;
int score;
int total_score=0;
 final List <Map<String , Object>> questions = [
    {
      'question':'who\'s invented the light bulb ? ' 
    , 'answer': [ { 'text':' Thomas Asison','score':100 }, {'text':'Abdallah Khaourf','score': 33} , {'text': ' Bill gates','score':20 },{ 'text' : 'Murad Alamdar','score':0 } ] } 

  ,
     {'question' : 'Who made SpaceX?' , 
       'answer' : [ {'text':'Elon musk' , 'score':100 }, {'text':'Ahamd maaam','score':0} ,{ 'text':' sundra buchai','score': 20}, {'text':'larry page','score':0 }]
   } ,
   {'question' : 'Who made Google' , 
       'answer' : [ {'text':'Steve Jobs','score':0} , {'text':'Birzeit Uni','score':0} , {'text':'Stanford Uni','score':100}, {'text':'Murad Alamddar','score':50}]
   } 
  ] ; 

int num=0,num1=0,num2=0;
void answer_action (score) 
 { 
  //  if(index==3)
  //  {
  //    index=0;
  //  }

  total_score = total_score + score;
   setState(() {
     index++;
   });
   print(index);
   print(total_score);
  print("answer chosen");
 }


 void reset_quiz()
 {
   total_score=0;
   setState(() {
     index=0;
   });
 }
  Color appBarC = Colors.red;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // debugging شريط
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarC,
          title: Text(" IQ Test "),
          actions: <Widget>[
            Switch(
              inactiveThumbColor: Colors.amber,
              inactiveTrackColor: Colors.deepPurpleAccent,
              value: isSwitched,
              onChanged: (value){
                setState(() {
                  isSwitched=value;
                print(isSwitched);
                if(isSwitched==true){b=Colors.white; w=Colors.black;}
                if(isSwitched==false){b=Colors.black; w=Colors.white;}
                });
              }
            )
          ],
          ),
          body: Container( 
            color: w,
            margin: EdgeInsets.all(8),
            alignment: Alignment.bottomCenter,
            width:double.infinity,
            child: index<questions.length? Quiz(questions, index, answer_action) :Result(reset_quiz,total_score),
           ),
           floatingActionButton: FloatingActionButton(
             backgroundColor: Colors.red,
             onPressed: ()
             {               
               setState(() {
                 if(index==0) index=0;
                 else{
                 index--;
                 }
               });
             },
             child: Icon(Icons.arrow_back),
             ),
    )
    );
  }
}
