import 'package:flutter/material.dart';
import 'selectHelp.dart';

class generalHome extends StatefulWidget {
  @override
  _generalHomeState createState() => _generalHomeState();
}

class _generalHomeState extends State<generalHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
            child:ClipOval(
            child: Container(
              width: 220.0,
              height: 220.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/img/help.png')
                )
              ),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                onPressed: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => selectHelp()));
                },
                child: null,
              ),
            ),


      ),
          

    )

    ));

  }
}
