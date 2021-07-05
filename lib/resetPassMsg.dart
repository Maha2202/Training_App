import 'package:flutter/material.dart';
import 'package:training_project/login.dart';

class resetPassMsg extends StatefulWidget {
  @override
  _resetPassMsgState createState() => _resetPassMsgState();
}

class _resetPassMsgState extends State<resetPassMsg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/img/msg.JPG"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: SafeArea(
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 20.0),
                            child: Column(children: <Widget>[
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 350, 10, 10),
                                  child: Text(
                                    "استعادة كلمة المرور",
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.black,
                                        fontFamily: 'Tajawal',
                                    fontWeight: FontWeight.bold
                                    ),


                                  ),
                                ),
                              ),

                              SizedBox(height: 10),
                              Container(

                                  child: Center(
                                    child: Text(
                                      "تم ارسال كلمة المرور على البريد الالكتروني",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          //fontWeight: FontWeight.bold,
                                          fontFamily: 'Tajawal'),
                                    ),
                                  )),
                              SizedBox(height: 100),
                              Container(
                                width: 350,
                                height: 260,
                                child: Center(
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(height: 60,
                                            width: MediaQuery.of(context).size.width,
                                            child: ElevatedButton(
                                                child: Text('موافق',style: TextStyle(fontSize: 15,fontFamily: 'Tajawal'),),
                                                style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 61, 213, 152),onPrimary: Colors.white,elevation: 10,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(50.0),
                                                    )),
                                                onPressed: (){
                                                  Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(builder: (context) => login()));

                                                }

                                            )
                                        )
                                      ],
                                    )

                                ),
                              ),
                            ]))))
            )
        ));
  }
}
