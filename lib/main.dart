// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task__for_flutter/controller/firebase_provider.dart';
import 'package:task__for_flutter/utlitiz/colors.dart';
import 'package:task__for_flutter/view/login_screen/sign_in_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'flutter test',
  options: DefaultFirebaseOptions.currentPlatform, 
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FirebaseProvider(),)
      ],
      child: ResponsiveSizer(
        builder: (context,Orientation,ScreenType) {
          return MaterialApp(
           title: 'Flutter Demo',
           debugShowCheckedModeBanner: false,
           theme: ThemeData(
            scaffoldBackgroundColor: textwhite
             
           ),
           home:const SignInScreen() ,
              );
        }
      ),
    );
  }
}
