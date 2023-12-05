
import 'package:flutter/material.dart';
import 'package:login_signup/componets/my_text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
    bool showPass=false;
    bool showConfirm=false;

      showConfPass(){
          setState(() {
            showConfirm=!showConfirm;
          });
      }
        showPassword(){
          setState(() {
            showPass=!showPass;
          });
        }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Account"),
         backgroundColor: Colors.transparent,
         centerTitle: true,
      ),
       backgroundColor: Color.fromARGB(255, 19, 18, 18),
       body: SingleChildScrollView(
          child: SafeArea(
             child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   SizedBox(height: 40,),
                   MyTextField(hinText: "Name"),
                   SizedBox(height: 12,),
                   MyTextField(hinText: "Email"),

                  SizedBox(height: 12,),
                   MyTextField(hinText: "Password",
                     onPressed: showPassword,
                     obsecureText: showPass ? false:true,
                      icon: showPass? Icons.visibility_off: Icons.visibility,
                   ),
                    SizedBox(height: 12,),
                   MyTextField(hinText: "Confirm Password",
                    onPressed: showConfPass,
                     obsecureText: showPass?false:true,
                     icon: showPass? Icons.visibility_off:Icons.visibility,
                   ),
                  SizedBox(height: 20,),

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade700),
                        ),
                        child: Image.asset("images/facebook.png",width: 50,),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade700),
                        ),
                        child: Image.asset("images/google.png",width: 50,),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade700),
                          ),
                          child: Icon(Icons.apple, size: 50,
                            color: Colors.white.withOpacity(0.5),
                          )
                      ),
                    ],
                  ),

                ],
             ),
          ),
       ),
    );
  }
}
