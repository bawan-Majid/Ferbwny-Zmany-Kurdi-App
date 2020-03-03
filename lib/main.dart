
import 'package:relative_layout/relative_layout.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:pimp_my_button/pimp_my_button.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  get child => null;

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note1.m4a');
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home:  ChangeButtonBackground(),
    );
  }

}

class ChangeButtonBackground extends StatefulWidget {
  @override
  ChangeButtonBackgroundState createState() {
    return new ChangeButtonBackgroundState();
  }

}
void playSound() {
  final player = AudioCache();
  player.play('right.mp3');
}

void playwrong() {
  final player = AudioCache();
  player.play('wrong.mp3');
}
class ChangeButtonBackgroundState extends State<ChangeButtonBackground> {
  List<Color> _colors1= [
    Colors.transparent,//Get list of colors
    Colors.green,

  ];

  List<Color> _colors2= [
    Colors.transparent,//Get list of colors
    Colors.green,


  ];
  void playSoundd() {
    final player = AudioCache();
    player.play('right.mp3');
  }
  int _currentIndex1 = 0;

  _onChanged1() { //update with a new color when the user taps button
    playSoundd();

    setState(() {

      _currentIndex1 =1;


    });


    //setState(() => (_currentIndex == _colorCount - 1) ? _currentIndex = 1 : _currentIndex += 1);
  }
  int  _currentIndex2 = 0;
  _onChanged2() {
    //update with a new color when the user taps button
    playSoundd();

    setState(() {
      _currentIndex2 = 1;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(

      body:


    Column(

        children: <Widget>[
          Row(children: <Widget>[Container(

            decoration: new BoxDecoration(
                color: new Color(0xFF43B5F5) ),
            child: Row(children: <Widget>[
              new Container(
                margin: EdgeInsets.fromLTRB(20.0, 14, 144, 13),
                child: FlatButton(
                  child:new Container(
                    child: Image.asset('assets/homepage.png',width: 50,height: 50,),
                  ),
                  onPressed: () {
                    //  playSound();
                  },
                ),),
              new Container(
                margin: EdgeInsets.fromLTRB(20, 14, 0, 13),
                child: FlatButton(
                  child:new Container(
                    child: Image.asset('assets/sound.png',width: 50,height: 50,),
                  ),
                  onPressed: () {
                    //  playSound();
                  },
                ),
              ),
            ],),

          )],),
         SafeArea(child: Row(

    children: <Widget>[


      Container( margin: EdgeInsets.fromLTRB(0,30, 0, 5),
        constraints: BoxConstraints(

            maxHeight: 300.0,
            maxWidth:360.0,
            minWidth: 300.0,
            minHeight: 300.0
        ),
        decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage("assets/w4ch3.png"),

          ),
        ),
        child:


        RelativeLayout(
          children: <LayoutId>[
            LayoutId(
              id: RelativeId('A'),
              child: FlatButton(
                child: Text('غ',style: TextStyle( fontSize: 24)),
                shape:CircleBorder(),
                onPressed: () {
                  playwrong();},
                //specify background color  of button from our list of colors
              ),    ),


            LayoutId(
              id: RelativeId('B', toLeftOf: 'A',above: 'A'),
              child:  FlatButton(
                child: Text('ح',style: TextStyle( fontSize: 24)),
                shape:CircleBorder(),
                onPressed: () {
                  playwrong();},
                //specify background color  of button from our list of colors
              ),),

            LayoutId(
              id: RelativeId('C',below: 'A'),
              child:  FlatButton(
                child: Text('پ',style: TextStyle( fontSize: 24)),
                shape:CircleBorder(),
                onPressed: () {
                  playwrong();},
                //specify background color  of button from our list of colors
              ),

            ),


            LayoutId(

              id: RelativeId('D', above: 'A'),
              child: FlatButton(

                  child: Text('د',style: TextStyle( fontSize: 24)),
                  onPressed: _onChanged1,
                  color: _colors1[_currentIndex1],
                  //specify background color  of button from our list of colors
                  shape:CircleBorder()),),

            LayoutId(

              id: RelativeId('E', toLeftOf: 'A'),
              child:  FlatButton(

                  child: Text('د',style: TextStyle( fontSize: 24)),

                  onPressed: _onChanged2,

                  color: _colors2[_currentIndex2],
                  //specify background color  of button from our list of colors
                  shape:CircleBorder()),),
            LayoutId(

              id: RelativeId('F', toRightOf: 'A'),
              child:  FlatButton(

                  child: Text('چ',style: TextStyle( fontSize: 24)),

                  onPressed: () {
                    playwrong();},
                  //specify background color  of button from our list of colors
                  shape:CircleBorder()),),
            LayoutId(

              id: RelativeId('G', toRightOf: 'A',above: 'A'),
              child:  FlatButton(

                  child: Text('ک',style: TextStyle( fontSize: 24)),

                  onPressed: () {
                    playwrong();},
                  //specify background color  of button from our list of colors
                  shape:CircleBorder()),),

            LayoutId(

              id: RelativeId('H', toRightOf: 'C',below: 'F'),
              child:  FlatButton(

                  child: Text('ک',style: TextStyle( fontSize: 24)),

                  onPressed: () {
                    playwrong();},
                  //specify background color  of button from our list of colors
                  shape:CircleBorder()),),
            LayoutId(

              id: RelativeId('I', toLeftOf: 'C',below: 'E'),
              child:  FlatButton(

                  child: Text('ن',style: TextStyle( fontSize: 24)),

                  onPressed: () {
                    playwrong();},
                  //specify background color  of button from our list of colors
                  shape:CircleBorder()),),

          ],
        ),
      ),]),),


          Row(children: <Widget>[Container(
            decoration: new BoxDecoration(
                color:Colors.transparent),
            child: Row(children: <Widget>[
              new Container(
                margin: EdgeInsets.fromLTRB(20.0, 20, 144, 13),
                child: FlatButton(
                  child:new Container(
                    child: Image.asset('assets/leftt.png',width: 50,height: 50,),
                  ),
                  onPressed: () {
                    //  playSound();
                  },
                ),),
              new Container(
                margin: EdgeInsets.fromLTRB(20, 20, 0, 13),
                child: FlatButton(
                  child:new Container(
                    child: Image.asset('assets/rightt.png',width: 50,height: 50,),
                  ),
                  onPressed: () {
                    //  playSound();
                  },
                ),
              ),
            ],),

          )],),




        ]),);


  }




}
