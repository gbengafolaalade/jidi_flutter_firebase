import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Leaderboard extends StatefulWidget{
  @override

  LeaderboardState createState() => LeaderboardState();

}

class LeaderboardState extends State<Leaderboard>{

   

  int _currentTab = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Leaderboard'),),
        
        bottomNavigationBar: new Theme(
    data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Theme.of(context).scaffoldBackgroundColor,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Theme.of(context).primaryColor,
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(caption: new TextStyle(color: Theme.of(context).primaryColor))), // sets the inactive color of the `BottomNavigationBar`
    child: new BottomNavigationBar(
      
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
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
        BottomNavigationBarItem(title: Text('Home'), icon: FaIcon(FontAwesomeIcons.home, color: Theme.of(context).primaryColor,)),
          BottomNavigationBarItem(title: Text('Leaderboard'), icon: FaIcon(FontAwesomeIcons.award, color: Theme.of(context).primaryColor)),
          BottomNavigationBarItem(title: Text('Downloads'), icon: FaIcon(FontAwesomeIcons.download, color: Theme.of(context).primaryColor),),
          BottomNavigationBarItem(title: Text('Profile'), icon: FaIcon(FontAwesomeIcons.user, color: Theme.of(context).primaryColor))
      ]
        ),
      
    ),
  
  
        
        body: ListView.separated(
          padding: EdgeInsets.all(20),
          itemCount: 8,
          itemBuilder: (BuildContext context, int index){
            return Container(
              height: 50,
              
              child: Container(
                margin: EdgeInsets.all(0),
                child: Container(
                  padding: EdgeInsets.all(0),
                  child: Row(
                    
                    children: <Widget>[
                      
                      Container(
                        
                        
                        child: IconButton(
                          icon: Icon(Icons.check_circle), 
                          onPressed: () {},
                        )
                      ),
                      
                      Container(
                        alignment: Alignment.center,
                        child: Text('Gbenga Fola-Alade'),
                        ),
                        Spacer(),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text('324')
                        ),
                    ],
                  ),
                ),
                
                ),
              decoration: BoxDecoration(
                color: Color(0xFF292A2F),
                
                borderRadius: BorderRadius.circular(10.0),
                boxShadow:[
                   BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                ],
              ),

            );
          }, 
          
          separatorBuilder: (BuildContext context, int index) => const  Divider(),
          ),
        
        
      );
  }

}