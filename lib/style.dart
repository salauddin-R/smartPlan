import 'dart:ui';

import 'package:flutter/material.dart';

Color white= Colors.white;
Color black=Colors.black;
Color green=Color(0xFF2CB57B);
Color greenLite=Color(0xFFD2FFEC);
TextStyle tStyle(color,size){
   return TextStyle(color: color,fontSize:size);
}

TextStyle tStyleblod(color,size){
  return TextStyle(color: color,fontSize:size,fontWeight: FontWeight.bold);
}

Card container(Icon icon,text,text2){
  return Card(
    child: Container(
      height:90,
      width: 105,
      child: Column(
        children: [
          SizedBox(height: 8,),
          icon,
          Text(text),
          Text(text2),
        ],
      ),
    ),
  );
}

Container containerData(text1,text2){
  return Container(
    height: 65,
    width: double.infinity,
    margin: EdgeInsets.only(top: 5,bottom: 5),color:white ,
    padding: EdgeInsets.only(top:15,bottom: 5,left:40),
    child:  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text1,style: tStyleblod(black,16.0),),
        Text(text2,style: tStyle(black,12.0),),
      ],
    ),
  );
}