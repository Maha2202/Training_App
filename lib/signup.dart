import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:training_project/confirm.dart';
import 'package:training_project/info.dart';
import 'info.dart';
import 'generalHome.dart';
import 'login.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup > {
  String _name, _email,_phone;
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool _isbackon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Form(
                key: _formkey,
                child: Column(
                        children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(right:20, left:10, top: 25),
                                child: IconButton(
                                  icon: new Icon(Icons.arrow_back,
                                      color: const Color(0xED000000), size: 30),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                login()));
                                  },
                                ),
                              ),
                            ),
                          ),

                          Center(
                            child: Container(
                              //padding: EdgeInsets.only(left: 10, top: 0, right: 30),
                              child: Text("انشاء حساب",style: TextStyle(fontSize: 25,color: Colors.black,fontFamily: 'Tajawal'),),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.all(30),
                              //padding: EdgeInsets.only(left: 30, top: 0, right: 30),
                              child: Column(
                                children: <Widget>[
                                  //SizedBox(height: 80),
                                  //SizedBox(height: 30),
                                  Center(
                                      child: Container(

                                        child: TextFormField(

                                          textAlign: TextAlign.right,
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.grey[200],
                                            hintText:('اسم المستخدم'),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                                borderRadius: BorderRadius.circular(15.0)),

                                          ),

                                          validator: (String value){
                                            if(value.isEmpty){
                                              return "الرجاء ادخال  اسم المستخدم";
                                            }
                                            return null;
                                          },
                                          onSaved: (String name){
                                            _name=name;
                                          },

                                        ),
                                      )
                                  ),
                                  SizedBox(height: 5),
                                  Center(
                                      child: Container(
                                          child: TextFormField(
                                            controller: _password,
                                            textAlign: TextAlign.right,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.grey[200],
                                              hintText:('كلمة المرور'),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius: BorderRadius.circular(15.0)),
                                            ),
                                            validator: (String value){
                                              if(value.isEmpty)
                                              {
                                                return 'الرجاء ادخال كلمة المرور';
                                              }

                                              return null;
                                            },

                                          )
                                      )
                                  ),
                                  SizedBox(height: 5),
                                  Center(
                                      child: Container    (
                                          child: TextFormField(
                                            controller: _confirmpassword,
                                            obscureText: true,
                                            textAlign: TextAlign.right,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.grey[200],
                                              hintText:('تأكيد كلمة المرور'),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius: BorderRadius.circular(15.0)),
                                            ),
                                            validator: (String value){
                                              if(value.isEmpty)
                                              {
                                                return 'الرجاء اعادة ادخال كلمة المرور';
                                              }
                                              if(_password.text != _confirmpassword.text){
                                                return 'كلمة المرور غير متماثلة';
                                              }
                                              return null;
                                            },

                                          )
                                      )
                                  ),
                                  SizedBox(height: 5),
                                  Center(
                                      child: Container(
                                          child: TextFormField(
                                            textAlign: TextAlign.right,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.grey[200],
                                              hintText:('البريد الإلكتروني'),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius: BorderRadius.circular(15.0)),
                                            ),

                                            validator: (String value){
                                              if(value.isEmpty)
                                              {
                                                return 'الرجاء ادخال البريد الالكتروني';
                                              }
                                              if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                                                return 'البريد الالكتروني غير صالح';
                                              }
                                              return null;
                                            },
                                            onSaved: (String email){
                                              _email = email;
                                            },

                                          )
                                      )
                                  ),
                                  SizedBox(height: 5),
                                  Center(
                                      child: Container(
                                          child: TextFormField(
                                            textAlign: TextAlign.right,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Colors.grey[200],
                                              hintText:('رقم الجوال'),
                                              //fillColor: Colors.black,
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius: BorderRadius.circular(15.0)
                                              ),
                                            ),
                                            validator: (String value){
                                              if(value.isEmpty)
                                              {
                                                return 'الرجاء ادخال رقم الجوال';
                                              }
                                              if(value.length<9){
                                                return 'رقم الجوال غير صالح';
                                              }
                                              return null;
                                            },
                                            onSaved: (String phone){
                                              _phone = phone;
                                            },
                                          )
                                      )
                                  ),

                                  SizedBox(height: 30),
                                  Center(
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(height: 60,
                                              width: MediaQuery.of(context).size.width,
                                              child: ElevatedButton(
                                                child: Text('تسجيل',style: TextStyle(fontSize: 15,fontFamily: 'Tajawal'),),
                                                style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 61, 213, 152),onPrimary: Colors.white,elevation: 10,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(50.0),
                                                    )),
                                                onPressed: (){
                                                  if(_formkey.currentState.validate()){
                                                    return Navigator.pushReplacement(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => confirm())
                                                    );
                                                  }else{
                                                    print("unsuccessfull");
                                                  }
                                                },
                                              )
                                          )
                                        ],
                                      )

                                  ),
                                ],
                              )
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 0, top: 90, right: 0),
                              width: 1000,
                              //height: 2000,
                              child: Image.asset('lib/img/dd.JPG')),
                        ]
                    )
    )
        )
            );






  }
}
