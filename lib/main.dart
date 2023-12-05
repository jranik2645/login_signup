import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup/screens/login_singnup_screen.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
           textTheme: GoogleFonts.poppinsTextTheme(
             Theme.of(context).textTheme,
           )
        ),
       debugShowCheckedModeBanner: false,
       home: LoginSignupScreen(),
    );

  }
}
