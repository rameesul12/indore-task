import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task__for_flutter/modal/task_modal.dart';
import 'package:task__for_flutter/utlitiz/sized_box.dart';

class ServicesScreen extends StatelessWidget {
   ServicesScreen({super.key,required this.datas});
List<TaskModal>datas=[];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent),
      child:  Scaffold(
        body: Column(
          children: [
           ListTile(
            leading: Image.asset(''),
           )
          ],
        ),
      ),
    );
  }
}