import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Qc extends StatelessWidget {
 const Qc({super.key,required this.Qus});
  final String Qus;


  @override
  Widget build(BuildContext context) {
    return
    Container(
    height: 150,
    width: 340,
    decoration: BoxDecoration(color: Colors.orangeAccent,
    borderRadius: BorderRadius.circular(15)),
    child: Center(
      child: Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(Qus,style: TextStyle(fontSize: 23),),
      ),
    ),
    );
  }
}
