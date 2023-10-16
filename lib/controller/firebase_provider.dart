
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirebaseProvider extends ChangeNotifier {

   bool? valueChanger=false;

   designBuilding(int index){
   
    if (index==0) {
      valueChanger=true;
    }else{
      valueChanger=false;
    }
    notifyListeners();

   }

//==============================
//firebase documentsId fetching
//=============================
  
 
}
