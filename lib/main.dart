import 'package:flutter/material.dart';
import 'package:flutter_myslider/circle_progress_bar.dart';

void main() => runApp(MyApp());

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

class ProgressBarState extends State<ProgressBarPage> {
  double progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CircleProgressBar'),
      ),
      body: Stack(
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
              Icon(Icons.ac_unit),
              Text("COLD"),
              /*
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    child: new Icon(Icons.add,color: Colors.red), onPressed: () {},
                  ),
                  Text("Temperature"),
                  MaterialButton(

                  ),
                ],
              ),
              */
            ],
          ),



          //Text("$progress"),
          CircleProgressBar(
            radius: 120.0,
            dotColor: Colors.pink,
            dotRadius: 18.0,
            shadowWidth: 2.0,
            progress: 0.0,
            progressChanged: (value) {
              setState(() {
                progress = value;
                print("Progress on setState:-------$progress");
              });
            },
          ),

        ],
      ),
    );
  }
}