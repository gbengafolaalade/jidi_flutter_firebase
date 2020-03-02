import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget{
  @override

  _ProfileScreenState createState() => _ProfileScreenState();

}

class _ProfileScreenState extends State<ProfileScreen>{

   final List<String> _listItem = [
    'assets/seen-from-outside.jpg',
    'assets/seen-from-outside.jpg',
    'assets/seen-from-outside.jpg',
    'assets/seen-from-outside.jpg',
    'assets/seen-from-outside.jpg',
    'assets/seen-from-outside.jpg',
  ];

  int _currentTab = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Profile'),),
        
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentTab,
          onTap: (int value){
            setState(() {
              _currentTab = value;

            });
          },
          
          items: [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home,)),
          BottomNavigationBarItem(title: Text('Leaderboard'), icon: Icon(Icons.star_border)),
          BottomNavigationBarItem(title: Text('Downloads'), icon: Icon(Icons.cloud_download)),
          BottomNavigationBarItem(title: Text('Profile'), icon: Icon(Icons.supervised_user_circle))

        ]),
        body: Container(
          height: 150,
          color: Colors.orangeAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  
                ),
              )
            ],
          ),

        )
        
        
      );
  }

}