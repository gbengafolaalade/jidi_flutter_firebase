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