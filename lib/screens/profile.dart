import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfileScreen extends StatefulWidget{
  @override

  _ProfileScreenState createState() => _ProfileScreenState();

}

class _ProfileScreenState extends State<ProfileScreen>{

   

  int _currentTab = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Profile'),),
        
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
  
  
        body: SafeArea(
          
                  child: Container(
                    padding: EdgeInsets.all(10),
            child: ListView(
              
              children: <Widget>[
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                     
                      
                      
                      
                      image: DecorationImage(
                        image: AssetImage('assets/Happy-Market-Woman.jpg'),
                        fit: BoxFit.cover,
                        )
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(height: 10,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Juliana Martey',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),

                Row(
                  children: <Widget>[
                    Container(height: 20,),
                  ],
                ),

                Column(
                  children: <Widget>[
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: <Widget>[
                             Container(
                               height: 100,
                               width: 100,
                               decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(2.0, 1.0),
                                      
                                      blurRadius: 6.0,
                                    ),
                                  ],  
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      FaIcon(FontAwesomeIcons.award, size: 50,color: Theme.of(context).scaffoldBackgroundColor,),
                                      Text('3 Badges', style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor, fontWeight: FontWeight.w600, fontSize: 17),)

                                    ],

                                ),
                                
                                ),
                             ),
                            
                            Container(
                               height: 100,
                               width: 100,
                               decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(2.0, 1.0),
                                      
                                      blurRadius: 6.0,
                                    ),
                                  ],  
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(13),
                                  child: Column(
                                    children: <Widget>[
                                      Text('756', style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor, fontSize: 29, fontWeight: FontWeight.w600,)),
                                      Text('JidiScore', style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor, fontWeight: FontWeight.w600, fontSize: 17),)

                                    ],

                                ),
                                
                                ),
                             ),

                             Container(
                               height: 100,
                               width: 100,
                               decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(2.0, 1.0),
                                      
                                      blurRadius: 6.0,
                                    ),
                                  ],  
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Icon(Icons.lock, size: 55,color: Theme.of(context).scaffoldBackgroundColor,),
                                      Text('Loans', style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor, fontWeight: FontWeight.w600, fontSize: 17),)

                                    ],

                                ),
                                
                                ),
                             ),



                            
                           
                           
                           ],
                         ),
                         SizedBox(height: 15),
                         Row(
              children: <Widget>[
                Container(
                                height: 90,
                                width: 340,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(2.0, 1.0),
                                      
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  
                                    
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(

                                    padding: EdgeInsets.all(7),
                                    
                                    child: Row(
                                      children: <Widget>[
                                         Text('Business',
                                    textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 20
                                  ),
                                  ),

                                  SizedBox(width: 170),
                                  

                                  new CircularPercentIndicator(
                                    radius: 60.0,
                                    lineWidth: 6.0,
                                    animation: true,
                                    percent: 0.7,
                                     center: new Text(
                                      "70.0%",
                                      style:
                                          new TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0),
                                    ),
                                    
                                        circularStrokeCap: CircularStrokeCap.round,
                                        progressColor: Colors.green,
                                      
                                    )
                                      ]
                                    )
                                  ),
                                ),
                              ),
              ],
            ),

                          SizedBox(height: 15),
                          Row(
                            children: <Widget>[
                              Container(
                                              height: 90,
                                              width: 340,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(10.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black,
                                                    offset: Offset(2.0, 1.0),
                                                    
                                                    blurRadius: 6.0,
                                                  ),
                                                ],
                                                
                                                  
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: Container(

                                                  padding: EdgeInsets.all(7),
                                                  
                                                  child: Row(
                                                    children: <Widget>[
                                                      Text('Finance',
                                                  textAlign: TextAlign.right,
                                                style: TextStyle(fontSize: 20
                                                ),
                                                ),

                                                SizedBox(width: 180),
                                                

                                                new CircularPercentIndicator(
                                                  radius: 60.0,
                                                  lineWidth: 6.0,
                                                  animation: true,
                                                  percent: 0.33,
                                                  center: new Text(
                                                    "33.0%",
                                                    style:
                                                        new TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0),
                                                  ),
                                                  
                                                      circularStrokeCap: CircularStrokeCap.round,
                                                      progressColor: Colors.orange,
                                                    
                                                  )
                                                    ]
                                                  )
                                                ),
                                              ),
                                            ),
                            ],
                          ),

                          SizedBox(height: 15),
                          Row(
                            children: <Widget>[
                              Container(
                                              height: 90,
                                              width: 340,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(10.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black,
                                                    offset: Offset(2.0, 1.0),
                                                    
                                                    blurRadius: 6.0,
                                                  ),
                                                ],
                                                
                                                  
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: Container(

                                                  padding: EdgeInsets.all(7),
                                                  
                                                  child: Row(
                                                    children: <Widget>[
                                                      Text('Savings',
                                                  textAlign: TextAlign.right,
                                                style: TextStyle(fontSize: 20
                                                ),
                                                ),

                                                SizedBox(width: 180),
                                                

                                                new CircularPercentIndicator(
                                                  radius: 60.0,
                                                  lineWidth: 6.0,
                                                  animation: true,
                                                  percent: 0.17,
                                                  center: new Text(
                                                    "17.0%",
                                                    style:
                                                        new TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0),
                                                  ),
                                                  
                                                      circularStrokeCap: CircularStrokeCap.round,
                                                      progressColor: Colors.red,
                                                    
                                                  )
                                                    ]
                                                  )
                                                ),
                                              ),
                                            ),
                            ],
                          ),

            
            SizedBox(height: 15),

            RaisedButton(
                                      
                                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0),),
                                      color: Color(0xFFFFDA23),
                                      padding: EdgeInsets.all(20),
                                      onPressed: (){

                                        Navigator.pushNamed(context, '/home');
                                      },
                                      child: Text('Apply for Loan',
                                      style: TextStyle(color: Color(0xFF2F5570),
                                      fontSize: 20,
                                      ),
                                      ),
                                      ),
                                     
 
                  ],
                ),

              

              ],
            ),
          

          
          ),
        ) 
        
        
      );
  }

}