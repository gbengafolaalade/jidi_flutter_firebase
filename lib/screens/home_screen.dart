import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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

  

  int _currentTab = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('JidiTrust'),),
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentTab,
          onTap: (int idx){
            switch (idx) {
          case 0:
            // do nuttin
            Navigator.pushNamed(context, '/home');
            break;
          case 1:
            Navigator.pushNamed(context, '/leader');
            break;
          case 2:
            Navigator.pushNamed(context, '/profile');
            break;
          case 3:
            Navigator.pushNamed(context, '/profile');
            break;
        }
            
          },
          
          items: [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home,)),
          BottomNavigationBarItem(title: Text('Leaderboard'), icon: FaIcon(FontAwesomeIcons.award)),
          BottomNavigationBarItem(title: Text('Downloads'), icon: Icon(Icons.cloud_download)),
          BottomNavigationBarItem(title: Text('Profile'), icon: Icon(Icons.supervised_user_circle))

        ].toList()
        
        ),
        body: GridView.count(
          primary: false,
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          padding: EdgeInsets.all(20.0),
          children: _listItem.map((item) => Card(
            color: Colors.transparent,
            child: InkWell(
              onTap: (){
                  Navigator.pushNamed(context, '/subject');
              },
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
            ),


          )
          ).toList()
          
          )
        
        
      );
  }

}