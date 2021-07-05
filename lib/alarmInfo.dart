import 'package:flutter/material.dart';
import 'securityHome.dart';
import 'nav2.dart';

class alarmInfo extends StatefulWidget {
  @override
  _alarmInfoState createState() => _alarmInfoState();
}

class _alarmInfoState extends State<alarmInfo> {
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
                                    "معلومات الانذار",
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.black,
                                        fontFamily: 'Tajawal',

                                    ),


                                  ),
                                ),
                              ),

                              SizedBox(height: 150),
                              Container(
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                        "رقم الانذار: ",
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.black,
                                            //fontWeight: FontWeight.bold,
                                            fontFamily: 'Tajawal'),
                                      ),
                                      Text(
                                          "1346-1356",
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.black,
                                              //fontWeight: FontWeight.bold,
                                              fontFamily: 'Tajawal'),
                                      )])
                              )
                ),
                              Container(
                                  child: Center(
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "نوع الانذار: ",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.black,
                                                  //fontWeight: FontWeight.bold,
                                                  fontFamily: 'Tajawal'),
                                            ),
                                            Text(
                                              "انذار طبي",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.black,
                                                  //fontWeight: FontWeight.bold,
                                                  fontFamily: 'Tajawal'),
                                            )])
                                  )
                              ),
                              Container(
                                  child: Center(
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "وقت الانذار: ",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.black,
                                                  //fontWeight: FontWeight.bold,
                                                  fontFamily: 'Tajawal'),
                                            ),
                                            Text(
                                              "9:30 ص",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.black,
                                                  //fontWeight: FontWeight.bold,
                                                  fontFamily: 'Tajawal'),
                                            )])
                                  )
                              ),
                              SizedBox(height: 20),
                              Container(child: Image.asset(
                                'lib/img/map.jpg',
                                height: 150,
                                width: 300,),),
                              SizedBox(height: 30),
                              Container(
                                width: 350,
                                height: 260,
                                child: Center(
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(height: 60,
                                            width: MediaQuery.of(context).size.width,
                                            child: ElevatedButton(
                                                child: Text('تمت المعالجة',style: TextStyle(fontSize: 15,fontFamily: 'Tajawal'),),
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


                ]
            )
        )
    )
    )
            )
        ));
  }
}
