import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OP extends StatelessWidget {
 const  OP({super.key,required this.ops,required this.clr,required this.ontap});
  final String ops;
 final Color clr;
 final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: ontap,
    child: Container(
    height: 60,
    width: 340,
    decoration: BoxDecoration(
    color: clr,
    borderRadius: BorderRadius.circular(30)
    ),
    child: Text(ops),
    ),
    );
  }
}
