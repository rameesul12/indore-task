import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task__for_flutter/modal/task_modal.dart';
import 'package:task__for_flutter/utlitiz/colors.dart';
import 'package:task__for_flutter/utlitiz/sized_box.dart';
import 'package:task__for_flutter/view/home_screen/widgets/home_container_widgets.dart';

import '../../controller/firebase_provider.dart';
import '../services_screen/services_screen.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
 
  List<TaskModal>modal=[TaskModal(name: 'Saloon', image: 'assets/images/saloon.jpg'),
  TaskModal(name: 'Cleaning', image: 'assets/images/cleaning.jpg'),];
   List<TaskModal>saloon=[TaskModal(name: 'Saloon', image: 'assets/images/saloon.jpg'),
  TaskModal(name: 'Cleaning', image: 'assets/images/cleaning.jpg'),
  ];
   List<TaskModal>cleaning=[TaskModal(name: 'Hair Cut', image: 'assets/images/haircut.jpg'),
  TaskModal(name: 'Bearc Cut', image: 'assets/images/bearcut.jpg'),
  ];

    final provider=Provider.of<FirebaseProvider>(context,listen: false);
    return  AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent),
      child: Scaffold(
           appBar: AppBar(
            backgroundColor:textwhite,
            elevation: 0,
            title: Text('Services',style: TextStyle(color: textwhite,fontWeight: FontWeight.w600),),
           ),
           body:SafeArea(child: 
           Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemCount: modal.length,
                  separatorBuilder: (context, index) => sizedH25,
                  itemBuilder:(context, index) {
                    return GestureDetector(
                       onTap: () {
                        if (provider.valueChanger==false) {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => ServicesScreen(datas:saloon,),));
                        }else{
                           Navigator.push(context, MaterialPageRoute(builder: (context) => ServicesScreen(datas:cleaning ,),));
                        }
                       
                       },
                      child: container_widgets(name: modal[index].name!, images: modal[index].image!,));
                  }, ),
              )
            ],
           ))
    ));
  }
}
