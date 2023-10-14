

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:task__for_flutter/utlitiz/colors.dart';


//=================================
  //scaffold alert message fucntion
//=================================

scaffoldMessage(BuildContext context,String message,Color? color){
   ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    backgroundColor: color,
    content: Text(message,style:const  TextStyle(color:textwhite),)));
}


 lottieshowing(BuildContext context){
  showDialog(context:context, builder:(context) {
    return SizedBox(
      height: 30,
      width: 20,
       child:  Lottie.asset("assets/animation/animation.json")
    ) ;
  },);
  }

