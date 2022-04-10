



import 'package:flutter/material.dart';
import 'package:ui_design/login.dart';
import 'package:ui_design/register.dart';


void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=> const MyLogin(),
      'register':(context)=> const MyRegister()
    },
  ));
}
