import 'package:flutter/material.dart';
import 'alarmInfo.dart';

class alarm extends StatefulWidget {
  @override
  _alarmState createState() => _alarmState();
}

class _alarmState extends State<alarm> {
  @override
  List<Alarm> alarm = [
    Alarm(
        name: 'انذار حريق',
        profileImg: 'lib/img/Frame 57.png',
        bio: "يوجد حريق في مبنى 61"),
    Alarm(
        name: 'انذار طبي',
        profileImg: 'lib/img/Frame 58.png',
        bio: "  يوجد اصابة  يوجد اصابة في مبن   99"),
    Alarm(
        name: 'انذار حريق',
        profileImg: 'lib/img/Frame 57.png',
        bio: "يوجد حريق في مبنى 61"),
    Alarm(
        name: 'انذار طبي',
        profileImg: 'lib/img/Frame 58.png',
        bio: "  يوجد اصابة  يوجد اصابة في مبن   99"),
  ];

  Widget alarmDetailCard(Alarm) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Color.fromARGB(255, 245, 245, 249),
      child: Column(
        children: [
          ListTile(
            leading: Container(
                width: 50.0,
                height: 50.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(Alarm.profileImg)))),
            title: Text(
              Alarm.name,
              style: TextStyle(
                  color: Colors.black, fontSize: 18, fontFamily: 'Tajawal'),
            ),
            subtitle: Text(
              Alarm.bio,
              style: TextStyle(
                  color: Colors.black54, fontSize: 12, fontFamily: 'Tajawal'),
            ),
            trailing: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '2:44 PM',
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 12,
                        fontFamily: 'Tajawal'),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => alarmInfo()));
            },
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.notifications_none,
                        size: 35, color: Colors.redAccent),
                    SizedBox(width: 5),
                    Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: Text(
                        'الانذارات',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'Tajawal'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                    children: alarm.map((p) {
                      return alarmDetailCard(p);
                    }).toList()),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.notifications_none,
                        size: 35, color: Colors.black26),
                    SizedBox(width: 5),
                    Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: Text(
                        'الانذارات السابقة',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'Tajawal'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                    children: alarm.map((p) {
                      return alarmDetailCard(p);
                    }).toList()),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Alarm {
  String name;
  String profileImg;
  String bio;

  Alarm({this.name, this.profileImg, this.bio});
}
