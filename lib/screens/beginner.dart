import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:widget_test/models/course_model.dart';


class BeginnerScreen extends StatefulWidget{


  


  @override

  _BeginnerScreenState createState() => _BeginnerScreenState();

}

class _BeginnerScreenState extends State<BeginnerScreen>{

  final List<String> _topicsItem = [
    'Business',
    'Finance',
    'Savings'
  ];

  final List<String> _quizNoItem = [
    '3 quizes',
    '1 quiz',
    '5 quizes'
  ];

  

  int _currentTab = 0;

  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('Business Lessons'),),

      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            
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
                          Navigator.pushNamed(context, '/business');
                        },
                        child: Stack(
                        children: <Widget>[
                          Container(
                            height: 120,

                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(image: AssetImage('assets/marketwoman.png'), fit: BoxFit.cover),
                                        
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(0.0, 2.0),
                                  
                                  blurRadius: 6.0,
                                ),
                              // image: DecorationImage(image: AssetImage(assetName)),
                                        
                              ],

                            ),
                            
                          ),

                          Container(
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black.withOpacity(0.6),
                            ),

                          ),


                          
                          Container(
                            
                            height: 150,
                            child: Column(
              
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                
                                  child: Row(
                                    children: <Widget>[
                                      

                                      SizedBox(width: 20,),

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                _topicsItem[index],
                                              style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.w500,
                                                color: Theme.of(context).primaryColor,

                                              ),
                                              ),
                                            ]
                                          ),
                                          Container(
                                            width: 30,
                                            height: 5,
                                            decoration: BoxDecoration(
                                              color: Theme.of(context).primaryColor,
                                              borderRadius: BorderRadius.circular(5)
                                            ),

                                          ),
                                          SizedBox(height: 20,),

                                          FaIcon(FontAwesomeIcons.solidPlayCircle, size: 30, color: Theme.of(context).primaryColor,)




                                        ],
                                      ),


                                      //IconButton(icon: Icon(Icons.lock_open), onPressed: (){},),
                                    ],
                                  ),
                                ),
                                
                                


                                

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
  
     );
 
 }

}