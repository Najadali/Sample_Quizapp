import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/page1.dart';
import 'package:quizapp/page2.dart';

class Interface extends StatelessWidget {
  const Interface({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Column(
        children: [
          SizedBox(height: 200,),
          Center(child: Image.asset("asset/quiz-2058888_960_720.webp",height: 250,)),
          SizedBox(
            height: 200,
          ),
          ElevatedButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page1(),));
          }, child: Text("Start"),
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orangeAccent)),
          )
        ],
      ),

    );
  }
}
