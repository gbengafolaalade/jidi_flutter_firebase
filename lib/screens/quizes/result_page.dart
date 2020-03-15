import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text('Results')),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: ListView(
          
          padding: EdgeInsets.all(10),
          children: <Widget>[
            //header

            Container(
                               height: 150,
                               width: 100,
                               
                                child: Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      new CircularPercentIndicator(
                                    radius: 90.0,
                                    lineWidth: 7.0,
                                    animation: true,
                                    percent: 0.33,
                                     center: new Text(
                                      "33.0%",
                                      style:
                                          new TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 20.0),
                                    ),
                                    
                                        circularStrokeCap: CircularStrokeCap.round,
                                        progressColor: Theme.of(context).primaryColor,
                                        footer: Text('Score', style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor, fontSize: 25), ),
                                     )
                                    ],

                                ),
                                
                                ),
                             ),
                            
            

            SizedBox(height: 15),
            Row(
              children: <Widget>[
                Container(
                                height: 60,
                                width: 390,
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
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(

                                    padding: EdgeInsets.all(10),
                                    
                                    child: Row(
                                      
                                      children: <Widget>[
                                         Text('Total Questions',
                                    textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 20
                                  ),
                                  ),

                                  SizedBox(width: 170),
                                  

                                   Text('3',
                                    textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 20
                                  ),
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
                                height: 60,
                                width: 390,
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
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(

                                    padding: EdgeInsets.all(10),
                                    
                                    child: Row(
                                      children: <Widget>[
                                         Text('Correct Answers',
                                    textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 20
                                  ),
                                  ),

                                  SizedBox(width: 170),
                                  

                                   Text('1',
                                    textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 20
                                  ),
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
                                height: 60,
                                width: 390,
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
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(

                                    padding: EdgeInsets.all(10),
                                    
                                    child: Row(
                                      children: <Widget>[
                                         Text('Incorrect Answer',
                                    textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 20
                                  ),
                                  ),

                                  SizedBox(width: 170),
                                  

                                   Text('2',
                                    textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 20
                                  ),
                                  )
                                      ]
                                    )
                                  ),
                                ),
                              
                              ),
              ],
            ),
          
            
            Row(
              
              children: <Widget>[
                Container(
                  
                                height: 150,
                                width: 390,
                                
                                child: Row(
                                  
                                  children: [
                                    RaisedButton(
                                      
                                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0),),
                                      color: Color(0xFFFFDA23),
                                      padding: EdgeInsets.all(20),
                                      onPressed: (){

                                        Navigator.pushNamed(context, '/home');
                                      },
                                      child: Text('Go to Home',
                                      style: TextStyle(color: Color(0xFF2F5570),
                                      fontSize: 20,
                                      ),
                                      ),
                                      ),
                                      
                                      SizedBox(width: 60),
                                      
                                      RaisedButton(
                                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0),
                                      side: BorderSide(color: Color(0xFFFFDA23), width: 3)
                                      ),
                                      color: Color(0xFF2F5570),//yellow
                                      padding: EdgeInsets.all(20),
                                      onPressed: (){},
                                      child: Text('Check Answers',
                                      style: TextStyle(color: Color(0xFFFFDA23),//blue
                                      fontSize: 20,
                                      ),
                                      ),
                                      ),
                                  ]
                                ),
                 ) ,
              ],
            ),

            


          ],
        )
        ),
    );
  }
}