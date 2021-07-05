import 'package:flutter/material.dart';
import 'info.dart';
import 'login.dart';



class setting extends StatefulWidget {
  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 249, 249, 10),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                margin: EdgeInsets.fromLTRB(80, 40, 5, 5),
                //margin: EdgeInsets.fromLTRB(80, 40, 15, 5),
                child: Text(
                  'الإعدادات',
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800),
                ),
              ),
              Card(
                child: Container(
                  height: 90.0,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  color: Colors.white,
                  child: ListTile(
                    title: Text(
                      'التسجيل كموظفة',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 24,
                          color: Colors.grey.shade800),
                    ),
                    leading: Container(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.perm_identity,
                        size: 35,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 61, 213, 152),
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      ),
                      // CircleAvatar(
                      //   backgroundImage: AssetImage('img/SignAvatar.png'),
                      //   maxRadius: 27,
                    ),
                    trailing: Icon(Icons.chevron_right, size: 25),
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => login()));
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 27.0,
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'عن التطبيق',
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 20,
                        color: Colors.grey.shade800),
                  ),
                  leading: Container(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.info,
                      size: 25,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 87, 95),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => info()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'تغيير اللغة',
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 20,
                        color: Colors.grey.shade800),
                  ),
                  leading: Container(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.language,
                      size: 25,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 60, 135, 255),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                  // onTap: () {
                  //   Navigator.pushReplacement(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => Language_Page()));
                  // },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'تواصل معنا',
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 20,
                        color: Colors.grey.shade800),
                  ),
                  leading: Container(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.forum,
                      size: 25,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 197, 66),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                  // onTap: () {
                  //   Navigator.pushReplacement(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => Contact_Page()));
                  // },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}