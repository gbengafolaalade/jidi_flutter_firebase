import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';
import 'package:widget_test/screens/quizes/chewielist.dart';

class BizQuestions extends StatefulWidget {

BizQuestions() : super();

  @override
  _BizQuestionsState createState() => _BizQuestionsState();
}

class _BizQuestionsState extends State<BizQuestions> {
  int _currentTab = 0;
//   VideoPlayerController _controller;
//   Future<void> _initializeVideoPlayerFuture;

// @override
  // void initState() {
  //    _controller = VideoPlayerController.network(
  //        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
  //   //_controller = VideoPlayerController.asset("assets/videos/sample.mp4");
  //   _initializeVideoPlayerFuture = _controller.initialize();
  //   _controller.setLooping(true);
  //   _controller.setVolume(1.0);
  //   super.initState();
  // }
 
  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Business')),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            
            Container(height: 20,),
            Container(
              padding: EdgeInsets.all(10),
              height: 1200,
              child: Column(
                children: <Widget>[
                  
                  Stack(
                    
                    children: <Widget>[

                      Container(
                        padding: EdgeInsets.only(top: 0),
                    height: 200,
                    decoration: BoxDecoration(
                      color:Colors.white,
                      image: DecorationImage(image: AssetImage('assets/playvid2.png'), fit: BoxFit.fill),
                    ),

                    child: Center(child: FaIcon(FontAwesomeIcons.solidPlayCircle,size: 50, color: Colors.white,)),


                  ),

                  


                      
                    ],



                  ),

                  

                  


                    





                  SizedBox(height: 30,),

                  Container(
                    height: 60,
                    
                    
                    child: RaisedButton(
                                      
                                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0),),
                                      color: Color(0xFFFFDA23),
                                      padding: EdgeInsets.all(20),
                                      onPressed: (){

                                        Navigator.pushNamed(context, '/quiz1');
                                      },
                                      child: Text('Take Quiz',
                                      style: TextStyle(color: Color(0xFF2F5570),
                                      fontSize: 20,
                                      ),
                                      ),
                                      ),
                
                  ),
                ],
              


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