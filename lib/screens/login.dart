import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget{
  @override

  LoginState createState() => LoginState();

}

class LoginState extends State<Login>{

   final List<String> _listItem = [
    'assets/seen-from-outside.jpg',
    'assets/seen-from-outside.jpg',
    'assets/seen-from-outside.jpg',
    'assets/seen-from-outside.jpg',
    'assets/seen-from-outside.jpg',
    'assets/seen-from-outside.jpg',
  ];

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('Market_Women_in_lagos.jpg')),
          

        ),


      )

        
    );
  }

}