import 'package:flutter/material.dart';
import 'package:widget_test/screens/profile.dart';

class HomeScreen extends StatefulWidget{
  @override

  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen>{

   final List<String> _listItem = [
    'assets/seen-from-outside.jpg',
    'assets/seen-from-outside.jpg',
    'assets/seen-from-outside.jpg',
    'assets/seen-from-outside.jpg',
    'assets/seen-from-outside.jpg',
    'assets/seen-from-outside.jpg',
  ];

  final List<Widget> _screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    ProfileScreen(),

  ];

  int _currentTab = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('JidiTrust'),),
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentTab,
          onTap: (int value){
            setState(() {
              _currentTab = value;
              if (_currentTab == 3) {
                Navigator.pushNamed(context, '/profile');
              }

            });
          },
          
          items: [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home,)),
          BottomNavigationBarItem(title: Text('Leaderboard'), icon: Icon(Icons.star_border)),
          BottomNavigationBarItem(title: Text('Downloads'), icon: Icon(Icons.cloud_download)),
          BottomNavigationBarItem(title: Text('Profile'), icon: Icon(Icons.supervised_user_circle))

        ]),
        body: GridView.count(
          primary: false,
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          padding: EdgeInsets.all(20.0),
          children: _listItem.map((item) => Card(
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(item),
                fit: BoxFit.cover
              )  
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(.2)

                    ]
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Text(
                          'Business',
                          style: TextStyle(fontSize: 22, color: Colors.white), ),

                      ],
                    ),
                  ),
              ),
              
            ),


          )
          ).toList()
          
          )
        
        
      );
  }

}