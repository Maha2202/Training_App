import 'package:flutter/material.dart';
import 'package:training_project/selectHelp.dart';

class securityHome extends StatefulWidget {
  @override
  _securityHomeState createState() => _securityHomeState();
}

class _securityHomeState extends State<securityHome> {
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
