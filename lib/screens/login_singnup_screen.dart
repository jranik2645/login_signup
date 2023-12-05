
import 'package:flutter/material.dart';
import 'package:login_signup/componets/my_button.dart';
import 'package:login_signup/screens/login_screen.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Log In "),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 19, 18, 18),
      body: SafeArea(child: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
              SizedBox(height: 140,),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Container(
                      padding: EdgeInsets.only(bottom: 50),
                     child: Image.asset("images/radio_wave_beta.png",
                       color: Color.fromARGB(255, 10, 185, 121),
                     ),

                   ),
                    MyButton(customColor: Colors.white.withOpacity(0.7),
                        text: 'Sign In', onTab: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      },),
                     SizedBox(height: 20,),
                     MyButton(customColor: Color.fromARGB(255, 18, 185, 121),
                         text: "Create an account", onTab: (){

                         })
                ],
              ),
               Spacer(),
               Container(margin: EdgeInsets.only(bottom: 40),
                 child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text("Terms of use", style: TextStyle(
                          color: Colors.white,
                       ),),
                        SizedBox(width: 20,),
                      Text("Privacy Policy", style: TextStyle(
                        color: Colors.white,
                      ),),
                    ],
                 ),
               ),
           ],
        ),
      )),
    );
  }
}
