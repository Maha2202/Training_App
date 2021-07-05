import 'package:flutter/material.dart';
import 'resetPassMsg.dart';
import 'login.dart';

class resetPassword extends StatefulWidget {
  @override
  _resetPasswordState createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/img/confirm1.JPG"),
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
                                          builder: (context) => login(),
                                        ),
                                      );
                                    },
                                  ),
                                ),

                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 50, 10, 10),
                                  child: Text(
                                    "استعادة كلمة المرور",
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.black,
                                        fontFamily: 'Tajawal'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 150),
                              Container(
                                  height: 60,
                                  width: 370,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Center(
                                      child: Container(
                                          child: TextFormField(
                                    textAlign: TextAlign.right,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      hintText: ('البريد الإلكتروني'),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                    ),
                                  )))),
                              SizedBox(height: 100),
                              Container(
                                width: 350,
                                height: 260,
                                child: Center(
                                    child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                        height: 60,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: ElevatedButton(
                                          child: Text(
                                            'استعادة كلمة المرور',
                                            style: TextStyle(fontSize: 15,fontFamily: 'Tajawal'),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              primary: Color.fromARGB(
                                                  255, 61, 213, 152),
                                              onPrimary: Colors.white,
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              )),
                                          onPressed: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        resetPassMsg()));
                                          },
                                        ))
                                  ],
                                )),
                              ),
                            ])))))));
  }
}
