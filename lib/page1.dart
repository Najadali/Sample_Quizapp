import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
      ),
      body: Page2(

      ),

    );
  }
}
