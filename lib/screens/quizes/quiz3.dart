import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Quiz3 extends StatefulWidget {
  @override
  _Quiz3State createState() => _Quiz3State();
}

class _Quiz3State extends State<Quiz3> {

 bool _active = false;
 bool _active2 = false;
 bool _active3 = false;
 bool _active4 = false;

  _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Business Quiz')),

      body: ListView(
        children: <Widget>[
          Text('How debtors does kojo have?', textAlign: TextAlign.center, style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800,  color: Theme.of(context).primaryColor)),
          RaisedButton(
                                      
                                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0),),
                                      color: Color(0xFFFFDA23),
                                      padding: EdgeInsets.all(5),
                                      onPressed: (){

                                        
                                      },
                                      child: Row(
                                        children: <Widget>[
                                          SizedBox(width: 110),
                                          FaIcon(FontAwesomeIcons.solidPlayCircle, color: Theme.of(context).scaffoldBackgroundColor,),
                                          SizedBox(width: 5),
                                          Text('Play Audio',
                                      style: TextStyle(color: Color(0xFF2F5570),
                                      fontSize: 15,
                                      ),
                                      ),
                                        ],
                                      ),
                                      ),
                                      
          

          
          Column(

            children: <Widget>[
              GestureDetector(
                onTap: (){
                  setState(() {
                    _active2 = !_active2;
                    _active3 = false;
                    _active4 = false;
                   
                  });
                },
                              child: Row(

                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                                height: 60,
                                width: 343,
                                decoration: BoxDecoration(
                                  color: _active2 ? Theme.of(context).primaryColor : Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 2.0),
                                      
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  
                                    
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text('3000',
                                  style: TextStyle(fontSize: 20
                                  
                                  ),
                                  )),
                                ),
                              ),
                      ),
                    ],


                ),
              )
            
            ,SizedBox(height:20),

             InkWell(
               onTap: (){
                  setState(() {
                    _active3 = !_active3;
                     _active2 = false;
                    _active4 = false;
                   
                  });
                },
                            child: Row(

                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                                height: 60,
                                width: 343,
                                decoration: BoxDecoration(
                                  color: _active3 ? Theme.of(context).primaryColor : Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 2.0),
                                      
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  
                                    
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text('4500',
                                  style: TextStyle(fontSize: 20),
                                  )),
                                ),
                              ),
                      ),
                    ],


                ),
             )
            


            ,SizedBox(height:20),

             InkWell(
               onTap: (){
                  setState(() {
                    _active4 = !_active4;
                     _active3 = false;
                    _active2 = false;
                   
                  });
                },
                            child: Row(

                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                                height: 60,
                                width: 343,
                                decoration: BoxDecoration(
                                  color: _active4 ? Theme.of(context).primaryColor : Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 2.0),
                                      
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  
                                    
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text('2300',
                                  style: TextStyle(fontSize: 20),
                                  )),
                                ),
                              ),
                      ),
                    ],


                ),
             )
            
            ,SizedBox(height:20),

            RaisedButton(
                                      
                                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0),),
                                      color: Color(0xFFFFDA23),
                                      padding: EdgeInsets.all(20),
                                      onPressed: (){

                                        Navigator.pushNamed(context, '/result');
                                      },
                                      child: Text('Submit',
                                      style: TextStyle(color: Color(0xFF2F5570),
                                      fontSize: 20,
                                      ),
                                      ),
                                      ),
                                      





            ],


          )
        ],
      ),
      
    );
  }
}