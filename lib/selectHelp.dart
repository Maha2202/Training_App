import 'package:flutter/material.dart';
import 'nav.dart';
import 'waiting.dart';

class selectHelp extends StatefulWidget {
  @override
  _selectHelpState createState() => _selectHelpState();
}

class _selectHelpState extends State<selectHelp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/img/HBG.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 20.0, horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: new Icon(Icons.arrow_back,
                          color: const Color(0xED000000), size: 30),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => nav(),
                          ),
                        );
                      },
                    ),
                  ),
                  Text(
                    'حدد نوع المساعدة',
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'حريق',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                'lib/img/Fire.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ],
                        ),
                        width: 155,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 255, 87, 95),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'دعم طبي',
                                style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                'lib/img/Vector.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ],
                        ),
                        width: 155,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 60, 135, 255),
                        ),
                      ),
                    ], //<Widget>[]
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'احتجاز في مكان مغلق',
                                style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                'lib/img/Person.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ],
                        ),
                        width: 155,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 61, 213, 152),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'احتجاز في مصعد',
                                style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                'lib/img/Elevator.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ],
                        ),
                        width: 155,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 255, 197, 75),
                        ), //BoxDecoration
                      ),
                    ], //<Widget>[]
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          hintText: ('الملاحظات'),
                          hintStyle: TextStyle(fontFamily: 'Tajawal'),
                          //fillColor: Colors.black,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(child: Image.asset(
                    'lib/img/map.jpg',
                    height: 150,
                    width: 300,),),
                  SizedBox(height: 15),
                  SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      child: Text(
                        'إرسال الطلب',
                        style: TextStyle(fontSize: 15, fontFamily: 'Tajawal'),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 61, 213, 152),
                        onPrimary: Colors.white,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => waiting(),
                          ),
                        );
                      },
                    ),
                  ), //Row
                              // ), //Flexible
                ], //<Widget>[]

                crossAxisAlignment: CrossAxisAlignment.center,
              ), //Column
            ), //Padding
          ), //Container
        ), //Container
      ),
    ));
  }
}