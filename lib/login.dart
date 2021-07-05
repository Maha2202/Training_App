import 'package:flutter/material.dart';
import 'package:training_project/nav.dart';
import 'package:training_project/nav2.dart';
import 'package:training_project/setting.dart';
import 'package:training_project/signup.dart';
import 'nav.dart';
import 'signup.dart';
import 'nav2.dart';
import 'resetPassword.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: new Icon(Icons.arrow_back,
                          color: const Color(0xED000000), size: 30),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => setting(),
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: 100, left: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("تسجيل الدخول",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Tajawal',
                                  color: Colors.black))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: ('اسم المستخدم'),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                    ),
                    SizedBox(height: 35),
                    TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: ('كلمة المرور'),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                    ),
                    SizedBox(height: 15),
                    FlatButton(
                      child: Text("هل نسيت كلمة المرور ؟",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Tajawal',
                            decoration: TextDecoration.underline,
                          )),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => resetPassword()));
                      },
                    ),
                    SizedBox(height: 35),
                    Center(
                        child: Column(
                      children: <Widget>[
                        SizedBox(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                child: Text(
                                  'تسجيل الدخول',
                                  style: TextStyle(
                                      fontSize: 15, fontFamily: 'Tajawal'),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 61, 213, 152),
                                    onPrimary: Colors.white,
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    )),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => nav2()));
                                }))
                      ],
                    )),
                    SizedBox(height: 35),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " ليس لديك حساب ؟ ",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Tajawal',
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ]),
                    SizedBox(height: 35),
                    Center(
                        child: Column(
                      children: <Widget>[
                        SizedBox(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                child: Text(
                                  'إنشاء حساب',
                                  style: TextStyle(
                                      fontSize: 15, fontFamily: 'Tajawal'),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 61, 213, 152),
                                    onPrimary: Colors.white,
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    )),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => signup()));
                                }))
                      ],
                    )),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 0, top: 90, right: 0),
                  width: 1000,
                  //height: 2000,
                  child: Image.asset('lib/img/dd.JPG')),
            ],
          ),
        ),
      ),
    );
  }
}
