
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  TitleText({required this.text, this.size,this.color});


  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: size??15,color:color?? Theme.of(context).primaryColor,fontWeight: FontWeight.bold),
    maxLines: 2,
    overflow: TextOverflow.ellipsis
      ,);
  }
}

class NormalText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  NormalText({required this.text, this.size,this.color});


  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: size??15,color:color?? Theme.of(context).primaryColor,),);
  }
}