import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


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
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);
    return Scaffold(
      body: Container(
       
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Market_Women_in_lagos.jpg'),
            fit: BoxFit.cover,
            ),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.7)),

            ),
            Positioned(
              top: 70,
              left: 110,
              child: Image(
                height: 150,
                width: 150,
                image: AssetImage('assets/jidi-logo.png'),

              ),
            ),

            
            Container(
              margin: EdgeInsets.only(top: 240, left: 15),
      width: 330,
      height: 270,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0),
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Login",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(45),
                    
                    letterSpacing: .6)),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            Text("Phone No",
                style: TextStyle(
                    
                    fontSize: ScreenUtil().setSp(26))),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "phone",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            Text("Password",
                style: TextStyle(
                    
                    fontSize: ScreenUtil().setSp(26))),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "password",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Colors.blue,
                      
                      fontSize: ScreenUtil().setSp(28)),
                )
              ],
            ),

            
          ],
        ),
      ),
    ),
            
            Positioned(
              top: 520,
              left: 15,
              child: RaisedButton(
                                      
                                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0),),
                                      color: Color(0xFFFFDA23),
                                      padding: EdgeInsets.only(left: 133,right: 133,top: 10,bottom: 10),
                                      onPressed: (){

                                        Navigator.pushNamed(context, '/home');
                                      },
                                      child: Text('LOGIN',
                                      style: TextStyle(color: Color(0xFF2F5570),
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                      ),
                                      
            ),
            
            Positioned(
              top: 580,
              left: 120,
              child: Row(
                children: [
                  Text(
                  "New Here?",
                  style: TextStyle(
                      color: Colors.white,
                      
                      fontSize: ScreenUtil().setSp(28)),
                ),

                Text(
                  "Create Account",
                  style: TextStyle(
                      color: Colors.blueAccent[100],
                      
                      fontSize: ScreenUtil().setSp(28)),
                ),


                ]
              )

            ),
                 


          ]
        ),


      )

        
    );
  }

}