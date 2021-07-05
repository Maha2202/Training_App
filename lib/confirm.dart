import 'package:flutter/material.dart';
import 'package:training_project/nav2.dart';
import 'package:training_project/securityHome.dart';
import 'securityHome.dart';
import 'nav2.dart';
import 'signup.dart';


class confirm extends StatefulWidget {
  @override
  _confirmState createState() => _confirmState();
}

class _confirmState extends State<confirm> {
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
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 70, 10, 10),
                                  child: Text(
                                    "تأكيد التسجيل",
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.black,
                                        fontFamily: 'Tajawal'),
                                  ),
                                ),
                              ),

                              SizedBox(height: 250),
                              Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                  color:  Colors.grey[200],
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                  child: Center(
                                    child: Text(
                                      "تم التسجيل بنجاح",
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
                                                    MaterialPageRoute(builder: (context) => nav2()));
                                                
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
