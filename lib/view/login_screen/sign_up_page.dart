// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task__for_flutter/utlitiz/show_dialogues.dart';
import 'package:task__for_flutter/view/home_screen/home_screen.dart';
import '../../services/login_page_services.dart/login_page_services.dart';
import '../../utlitiz/colors.dart';
import '../../utlitiz/sized_box.dart';
import '../../utlitiz/textform_field.dart';

final _formKey = GlobalKey<FormState>();

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
        final TextEditingController UserNameController = TextEditingController();
    final TextEditingController addressController = TextEditingController();

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
   
  

    return Scaffold(
      appBar: AppBar(
        backgroundColor: textwhite,
        elevation: 0,
        title:const Text(
          'SignUp',
          style: TextStyle(color: textBlack, fontSize: 30),
        ),
        centerTitle: true,
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
                  hintText: 'User name',
                  textController: UserNameController,
                  textIcon: Icons.person,
                ),
              ),
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
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextformField1(
                  hintText: 'Address',
                  textController: addressController,
                  textIcon: Icons.home,
                ),
              ),
              
              sizedH60,
              SizedBox(
                  height: 50,
                  width: Adaptive.w(90),
                  child: ElevatedButton(
                      onPressed: () async {
                         if (_formKey.currentState!.validate()){
                     
                    //  lottieshowing(context);
                       await LoginPageServices.createUserWithEmailAndPassword(context, emailController.text, passwordController.text);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
                         }else{
                         scaffoldMessage(context, 'somthing went wrong please check the forms...', textRed);
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
                              'sign Up',
                              style: TextStyle(
                                  color: textwhite,
                                  fontWeight: FontWeight.bold),
                            ))),

              
            ],
          ),
        ),
      ),
    );
  }
}
