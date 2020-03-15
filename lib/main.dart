import 'package:flutter/material.dart';
import 'package:widget_test/screens/beginner.dart';

import 'package:widget_test/screens/home_screen.dart';
import 'package:widget_test/screens/home_test.dart';
import 'package:widget_test/screens/leaderboard.dart';
import 'package:widget_test/screens/login.dart';
import 'package:widget_test/screens/profile.dart';
import 'package:widget_test/screens/quizes/question-business.dart';
import 'package:widget_test/screens/quizes/quiz1.dart';
import 'package:widget_test/screens/quizes/quiz2.dart';
import 'package:widget_test/screens/quizes/quiz3.dart';
import 'package:widget_test/screens/quizes/result_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  

  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFFFDA23),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFF2F5570),
      ),

      routes: {
        '/home': (context) => HomeTestScreen(),
        '/profile': (context) => ProfileScreen(),
        '/leader': (context) => Leaderboard(),
        '/login': (context) => Login(),
        '/beginner': (context) => BeginnerScreen(),
        '/business': (context) => BizQuestions(),
        '/quiz1': (context) => Quiz1(),
        '/quiz2': (context) => Quiz2(),
        '/quiz3': (context) => Quiz3(),
        '/result': (context) => ResultPage(),




      },
      home: HomeTestScreen(),
    );
  }
}





