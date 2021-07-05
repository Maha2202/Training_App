import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:training_project/securitySetting.dart';
import 'signup.dart';
import 'nav.dart';
import 'generalHome.dart';
import 'setting.dart';
import 'securitySetting.dart';

class securityInfo extends StatefulWidget {
  @override
  _securityInfoState createState() => _securityInfoState();
}

class _securityInfoState extends State<securityInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:Center(
                child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/img/new1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: SafeArea(
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 20.0),
                            child: Column(children: <Widget>[
                              Container(
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                    icon: new Icon(Icons.arrow_back,
                                        color: const Color(0xED000000),
                                        size: 30),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => securitySetting(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 10, 10),
                                  child: Text(
                                    "معلومات عن التطبيق",
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                        fontFamily: 'Tajawal'),
                                  ),
                                ),
                              ),
                              Container(
                                width: 80,
                                height: 80,
                                child: Image.asset('lib/img/info.png'),
                              ),
                              SizedBox(height: 120),
                              Container(
                                  child: Center(
                                    child: Text(
                                      "اضافة معلومات",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Tajawal'),
                                    ),
                                  )),
                              SizedBox(height: 40),
                              Container(
                                width: 350,
                                height: 260,
                                child: Center(
                                    child: Image.asset('lib/img/kau.JPG')),
                              ),
                            ]))))
            )
        ));
  }
}
