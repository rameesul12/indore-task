import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task__for_flutter/utlitiz/colors.dart';

import '../../utlitiz/show_dialogues.dart';
import '../../view/home_screen/home_screen.dart';

class LoginPageServices{
 

 
//=================================
//firebase signin authentication function
//=================================

 static signInWithEmailAndPassword(
    BuildContext context, String email, String password) async {
  try {
     await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
     // ignore: use_build_context_synchronously
     Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) =>const HomePage() ,));

  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      scaffoldMessage(context, 'No user found for that email.', textBlack);
      //  print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      scaffoldMessage(
          context, 'Wrong password provided for that user.', textRed);
    }
  }
}
//=================================
//firebase signUp authentication function
//=================================
 

 static createUserWithEmailAndPassword(BuildContext context,String email,String password) async{
  try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
      scaffoldMessage(
          context, 'The password provided is too weak.', textRed);
         
   
  } else if (e.code == 'email-already-in-use') {
     scaffoldMessage(
          context, 'The account already exists for that email.', textRed);
    //print('The account already exists for that email.');
  }
} catch (e) {
  log(e.toString());
}
 }

}
