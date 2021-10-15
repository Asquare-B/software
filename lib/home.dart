import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:software/Drawer/menuDrawer.dart';
import 'package:flutter/rendering.dart';
import 'package:software/Request/requestHome.dart';
import 'package:software/extraClass/extra1.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
              image: DecorationImage(
                image: AssetImage('assets/images/Untitled.png'),
                fit: BoxFit.fill,
              )
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
        ),
        title: Text('Education Scheduler'),
      ),
      drawer: Menu(),
      body: Stack(
        children: <Widget>[
          SafeArea(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: GridView.count(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          primary: true,
                          children: <Widget>[
                            InkWell(
                              onTap: () {},
                              splashColor: Colors.black54,
                              borderRadius: BorderRadius.circular(15),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        child: Image.asset('assets/images/timetable.png',height: 100)
                                    ),
                                    SizedBox(height: 6,),
                                    Text("View TimeTable", style: cardStyle,),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context)=>Extra1())
                                );
                              },
                              splashColor: Colors.black54,
                              borderRadius: BorderRadius.circular(15),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                elevation: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Container(
                                          child: Image.asset('assets/images/extra class.png',height: 100)
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Text("Extra Class", style: cardStyle,),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              splashColor: Colors.black54,
                              borderRadius: BorderRadius.circular(15),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                elevation: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Container(
                                          child: Image.asset('assets/images/faculty.png',height: 100)
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Text("Substitute Faculty", style: cardStyle,),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              splashColor: Colors.black54,
                              borderRadius: BorderRadius.circular(15),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                elevation: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Container(
                                          child: Image.asset('assets/images/s class.png',height: 100)
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Text("substitute Class", style: cardStyle,),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => RequestHome())
                                );
                              },
                              splashColor: Colors.black54,
                              borderRadius: BorderRadius.circular(15),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                elevation: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Container(
                                          child: Image.asset('assets/images/request.png',height: 100)
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Text("Request", style: cardStyle,),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              splashColor: Colors.black54,
                              borderRadius: BorderRadius.circular(15),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                elevation: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Container(
                                          child: Image.asset('assets/images/details.jpg',height: 100)
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Text("Profile details", style: cardStyle,),
                                  ],
                                ),
                              ),
                            ),



                          ],
                          crossAxisCount: 2),
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}

