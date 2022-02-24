import 'package:flutter/material.dart';
import 'package:flutter_app1/auth/login.dart';
import 'package:flutter_app1/auth/signup.dart';
import 'package:flutter_app1/home/homepage.dart';
import 'package:flutter_app1/home/addnote.dart';
import 'package:flutter_app1/oldpage/four.dart';




void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:four(),
      routes: {
        "login":(context)=>login(),
        "signup" :(context)=>signup(),
        "homepage":(context)=>homepage(),
        "addnote":(context)=>addnote(),
      },
      theme:ThemeData(
        primaryColor: Colors.pink[400],
        
      ) ,
     
    );
}}



