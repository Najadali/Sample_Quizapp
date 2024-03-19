import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/listmap.dart';

import 'package:quizapp/op.dart';
import 'package:quizapp/qc.dart';




class Page2 extends StatefulWidget {
  const  Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  List<Map> New1=[
  { "qus": "1.Who is this Richest man in this World? ",
    "op":["1) Bill Gates",
      "2) Jeff Bezos",
       "3) Elon Musk",
       "4) Mukesh Ambani",
      ],
    "ans":2
  }, { "qus": "2.What is the Capital of India? ",
      "op":[ "1) Kerala",
        "2) Delhi",
         "3) Goa",
         "4) Maharashtra ",
         ],
      "ans":1
    },
    {
      "qus":"3.What is the Largest Planet in our Solar System?",
      "op":["1) Mars",
             "2) Earth",
             "3) Jupiter",
             "4) Saturn"],
      "ans":2
    },
    {
      "qus":"4.What is the Capital of Kerala?",
      "op":["1) Thiruvanathapura",
             "2) Thrissur",
             "3) Wayanad",
             "4) Kannur"],
      "ans":0
    },
    {
      "qus":"4.What is the Chemical Symbol for Water?",
      "op":["1) O2",
        "2) NaC1",
        "3) CO2",
        "4) H2O"],
      "ans":3
    }
  ];
  data(){
    next++;
    seleindex=null;

    if(next==New1.length){
      showDialog(context: context, builder: (context) {
        return AlertDialog(
          title: Text("Your mark:$mark"),
        );
      },);
      next=0;
    }
  }

  var next=0;
  int? seleindex;
  secet(int index){
      seleindex=index;
      if(check==true){
        if(New1[next]["ans"]==index){
          colr=Colors.green;
          setState(() {

          });
        }else{
          if(seleindex==New1[next]["ans"]){
            colr=Colors.green;
          }else{
            colr=Colors.red;
          }
        }
        if(New1[next]["ans"]){
          colr=Colors.green;
        }
        check=false;
        setState(() {

        });
      }

  }
  int? value;
  valuecheck(int index){
    setState(() {
      value=index;
    });
  }
  bool flag=true;
  var mark=0;
  bool check=true;
  Color colr=Colors.white;


  




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
          children: [

            SizedBox(height: 20,),
            Qc(Qus: New1[next]["qus"]),
            SizedBox(height: 30,),
                 Container(
                   height: 380,
                   width: double.infinity,
                   color: Colors.transparent,
                   child: ListView.separated(itemBuilder: (context, index) {
                     int?datacolr;
                     datacolrchen(valuindex){
                       datacolr=valuindex;
                       setState(() {

                       });
                     }
                     return InkWell(
                       onTap: () {
                       setState(() {

                       });
                         if(New1[next]["ans"]==index){
                           mark++;
                         }
                         secet(index);

                           datacolr=New1[next]["ans"];

                         datacolrchen(New1[next]["ans"]);

                       },
                       child: Container(
                         height: 60,
                         width: 340,
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                         color:seleindex==index?colr:datacolr==New1[next]["ans"]?Colors.green:Colors.white
                         ),
                         child: Center(child: Text(New1[next]["op"][index],style: TextStyle(fontSize: 18),)),
                       ),

                     );

                   }, separatorBuilder: (context, index) {
                     return SizedBox(
                       height: 30,
                     );
                   }, itemCount: 4),
                 ),

                 ElevatedButton(onPressed: () {
                   setState(() {

                   });

                   data();

                 }, child: Text("Next"),
                   style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
                 )
          ]),
    );
  }
}


