
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utlitiz/colors.dart';

class container_widgets extends StatelessWidget {
  const container_widgets({
    super.key, required this.images, required this.name,
  });
  final String images;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Adaptive.h(6),
      width: Adaptive.w(90),
      decoration: BoxDecoration(
        color: textwhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child:ListTile(
        leading: SizedBox(
          width: Adaptive.w(20),
          child: Image.asset(images,fit: BoxFit.cover,)),

        title: Text(name,style: TextStyle(color: textBlack,fontSize: Adaptive.sp(18),fontWeight: FontWeight.w700),),
      )
    );
  }
}