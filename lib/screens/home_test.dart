import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:widget_test/models/course_model.dart';


class HomeTestScreen extends StatefulWidget{


  


  @override

  _HomeTestScreenState createState() => _HomeTestScreenState();

}

class _HomeTestScreenState extends State<HomeTestScreen>{

  final List<double> _percentItem = [
    0.9,
    0.7,
    0.4
  ];

  

  int _currentTab = 0;

  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      drawer: Drawer(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: Row(
                children: <Widget>[
                  

                Spacer(flex: 4),

                
                ],
              ),
            ),
            Container(height: 20,),
            Container(
              height: 1200,
              child: ListView.separated(
                  padding: const EdgeInsets.all(8),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    Course course = courses[index]; 
                    return InkWell(
                              onTap: (){
                          Navigator.pushNamed(context, '/beginner');
                      },
                    child: Stack(
                        children: <Widget>[
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(0.0, 2.0),
                                  
                                  blurRadius: 6.0,
                                ),
                              ],
                              image: DecorationImage(
                                image: AssetImage(course.imageUrl),
                                fit: BoxFit.cover
                              ) 


                                
                            ),
                          ),
                          
                          Container(
                            
                            height: 150,
                            child: Column(
              
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 65, left: 20),
                                  
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                      course.name,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,                                      ),
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.lock), 
                                        color: Colors.white,  
                                        onPressed: (){},
                                      
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: <Widget>[
                                      LinearPercentIndicator(
                                          width: MediaQuery.of(context).size.width - 220,
                                          animation: true,
                                          lineHeight: 8.0,
                                          animationDuration: 2000,
                                          percent: _percentItem[index],
                                          
                                          linearStrokeCap: LinearStrokeCap.roundAll,
                                          progressColor: Theme.of(context).primaryColor,
                                         ),
                                         
                                    ],
                                  ),
                                  
                                ),
                                SizedBox(height: 10,),

                                


                                

                              ],
                            ),
                          ),
                          


                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                ),
            )

            

            

          ],
         ),
       ),
     
     
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
            Navigator.pushNamed(context, '/login');
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
  
     
     
     
     
     );
 
 }

}