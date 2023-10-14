// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task__for_flutter/utlitiz/show_dialogues.dart';
import 'package:task__for_flutter/view/home_screen/home_screen.dart';
import 'package:task__for_flutter/view/login_screen/sign_up_page.dart';
import '../../services/login_page_services.dart/login_page_services.dart';
import '../../utlitiz/colors.dart';
import '../../utlitiz/sized_box.dart';
import '../../utlitiz/textform_field.dart';

final _formKey = GlobalKey<FormState>();

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
   
  

    return Scaffold(
      appBar: AppBar(
        backgroundColor: textwhite,
        elevation: 0,
        title: const Center(
          child: Text(
            'Login',
            style: TextStyle(color: textBlack, fontSize: 30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            //  crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              sizedH60,
              //  sizedH60,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextformField1(
                  hintText: 'Email',
                  textController: emailController,
                  textIcon: Icons.email,
                ),
              ),
              sizedH10,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextformField1(
                  hintText: 'password',
                  textController: passwordController,
                  textIcon: Icons.lock,
                ),
              ),
              sizedH60,
              SizedBox(
                  height: 50,
                  width: Adaptive.w(90),
                  child: ElevatedButton(
                      onPressed: () async {
                         if (_formKey.currentState!.validate()){
                     
                      lottieshowing(context);
                       await LoginPageServices.signInWithEmailAndPassword(context, emailController.text, passwordController.text);
                       
                         }else{
                         // scaffoldMessage(context, 'somthing went wrong in email or password', textRed);
                         }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: textBlack,
                      ),
                      // ignore: unrelated_type_equality_checks
                      child:
                        const Text(
                              'Login',
                              style: TextStyle(
                                  color: textwhite,
                                  fontWeight: FontWeight.bold),
                            ))),

              TextButton(
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: textBlack),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
