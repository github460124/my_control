import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'dart:io';
import 'package:flutter_myslider/circle_progress_bar.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  //SocketUtil socketUtil=new SocketUtil();
  debugPaintSizeEnabled = false;
  runApp(MyApp());
  
}
typedef SetProgress<double> = void Function(double value);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProgressBarPage(),
    );
  }
}

class ProgressBarPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => ProgressBarState();
}


class ProgressBarState extends State<ProgressBarPage>{
  double progress = 0.0;
  String but;


  void _iconButtonPressRediusTemperature(){//减少温度

    if(progress<=1)
      progress -=1/48;
    setState(() {

    });

  }
  void _iconButtonPressAddTemperature(){//增加温度
    if(progress<=1)
      progress +=1/48;
    setState(() {

    });
      //this.progressChanged(progress);
    print('button2 pressed-----');
  }
  void _iconButtonPressSetCold(){
    print('button3 pressed-----');
  }
  void _iconButtonPressSetAuto(){
    print('button3 pressed-----');
  }
  void _iconButtonPressSetHot(){
    print('button3 pressed-----');
  }
  void _iconButtonPressSpeedLow(){
    print('button3 pressed-----');
  }
  void _iconButtonPressSpeedMid(){
    print('button3 pressed-----');
  }
  void _iconButtonPressSpeedHigh(){
    print('button3 pressed-----');
  }
  void _iconButtonPressOn(){
    print('button3 pressed-----');
  }
  void _iconButtonPressOff(){
    print('button3 pressed-----');
  }


  @override
  Widget build(BuildContext context) {
    print(" progressBarState  build--$progress");
    return Scaffold(
      appBar: AppBar(
        title: Text('CircleProgressBar'),
      ),
      body:
      new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('${(16+progress * 16.0).round()}',style: TextStyle(fontSize: 60.0),),
                      Text(' ℃',style: TextStyle(fontSize: 30),),
                    ],
                  ),
                  new Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: new Column(
                      children: <Widget>[
                        Icon(Icons.ac_unit,color: Colors.blue,),
                      ],
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: new Column(
                      children: <Widget>[
                        Text("COLD",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                ],
              ),

              CircleProgressBar(
                radius: 120.0,
                dotColor: Colors.pink,
                dotRadius: 18.0,
                shadowWidth: 2.0,
                progress:  progress,
                progressChanged: (value) {
                  setState(() {
                    progress = value;
                    //print("Progress on setState:-------$progress");
                  });
                },
              ),

            ],
          ),

         new Container(
           margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
           child: new Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[

               // 第一行按钮
               new Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   new Container(
                     margin: EdgeInsets.fromLTRB(0, 10, 30, 10),
                     child: RaisedButton(
                       child: new Icon(Icons.arrow_back_ios),
                       onPressed: _iconButtonPressRediusTemperature,
                       highlightColor: Colors.blue,
                       splashColor: Colors.blue,
                       elevation: 10,
                     ),
                   ),
                   new Container(
                     margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
                     child:  Text(
                       "Temp",
                       style: TextStyle(fontSize: 20),
                     ),
                   ),
                   new Container(
                     margin: EdgeInsets.fromLTRB(30, 10, 0, 10),
                     child: RaisedButton(
                       onPressed: _iconButtonPressAddTemperature,
                       child: Icon(Icons.arrow_forward_ios),
                       highlightColor: Colors.blue,
                       splashColor: Colors.blue,
                       elevation: 10,
                     ),
                   ),
                 ],
               ),


               //第二行按钮
               new Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   new Container(
                     margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                     child: RaisedButton(
                       onPressed: _iconButtonPressSetCold,
                       child: Icon(Icons.ac_unit),
                       highlightColor: Colors.red,
                       splashColor: Colors.red,
                       elevation: 10,
                     ),
                   ),
                   new Container(
                     margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                     child: RaisedButton(
                       onPressed: _iconButtonPressSetAuto,
                       child: Icon(Icons.ac_unit),
                       highlightColor: Colors.red,
                       splashColor: Colors.red,
                       elevation: 10,
                     ),
                   ),
                   new Container(
                     margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                     child: RaisedButton(
                       onPressed: _iconButtonPressSetHot,
                       child: Icon(Icons.ac_unit),
                       highlightColor: Colors.red,
                       splashColor: Colors.red,
                       elevation: 10,
                     ),
                   ),
                 ],
               ),

               //第三行按钮
               new Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   new Container(
                     margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                     child: RaisedButton(
                       onPressed: _iconButtonPressSpeedLow,
                       child: Icon(Icons.ac_unit),
                       highlightColor: Colors.red,
                       splashColor: Colors.red,
                       elevation: 10,
                     ),
                   ),
                   new Container(
                     margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                     child: RaisedButton(
                       onPressed: _iconButtonPressSpeedMid,
                       child: Icon(Icons.ac_unit),
                       highlightColor: Colors.red,
                       splashColor: Colors.red,
                       elevation: 10,
                     ),
                   ),
                   new Container(
                     margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                     child: RaisedButton(
                       onPressed: _iconButtonPressSpeedHigh,
                       child: Icon(Icons.ac_unit),
                       highlightColor: Colors.red,
                       splashColor: Colors.red,
                       elevation: 10,
                     ),
                   ),
                 ],
               ),


               //第四行按钮
               new Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   new Container(
                     margin: EdgeInsets.fromLTRB(20, 10, 60, 10),
                     child: RaisedButton(
                       color: Colors.blue,
                       onPressed: _iconButtonPressOn,
                       child: Icon(Icons.alarm_on),
                       highlightColor: Colors.red,
                       splashColor: Colors.red,
                       elevation: 10,
                     ),
                   ),
                   new Container(
                     margin: EdgeInsets.fromLTRB(60, 10, 20, 10),
                     child: RaisedButton(
                       color: Colors.red,
                       onPressed: _iconButtonPressOff,
                       child: Icon(Icons.alarm_off),
                       highlightColor: Colors.blue,
                       splashColor: Colors.blue,
                       elevation: 10,
                     ),
                   ),
                 ],
               ),

             ],
           ),
         ),
        ],
      ),

    );
  }

  @override
  StatefulElement createElement() {
    // TODO: implement createElement
    return null;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    // TODO: implement debugDescribeChildren
    return null;
  }

  @override
  // TODO: implement dotColor
  Color get dotColor => null;

  @override
  // TODO: implement dotEdgeColor
  Color get dotEdgeColor => null;

  @override
  // TODO: implement dotRadius
  double get dotRadius => null;

  @override
  // TODO: implement key
  Key get key => null;

  @override
  // TODO: implement progressChanged
  get progressChanged => null;

  @override
  // TODO: implement radius
  double get radius => null;

  @override
  // TODO: implement ringColor
  Color get ringColor => null;

  @override
  // TODO: implement shadowColor
  Color get shadowColor => null;

  @override
  // TODO: implement shadowWidth
  double get shadowWidth => null;

  @override
  String toStringDeep({String prefixLineOne = '', String prefixOtherLines, DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    // TODO: implement toStringDeep
    return null;
  }

  @override
  String toStringShallow({String joiner = ', ', DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    // TODO: implement toStringShallow
    return null;
  }







}
