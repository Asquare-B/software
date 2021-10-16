import 'package:flutter/material.dart';
import 'package:software/Drawer/menuDrawer.dart';
import 'package:software/facultySearch.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override

  Widget build(BuildContext context) {
    var cardStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    var size = MediaQuery.of(context).size;
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
      title: Text('Education Scheduler',style: TextStyle(color: Colors.black),),
    ),
      drawer: Menu(),
      body: Stack(
        children: <Widget>[
          SafeArea(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      height: size.height *0.1,
                      width: double.infinity,
                      child: Text(
                        'Faculty scheduling App',
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Expanded(
                      child: GridView.count(
                        mainAxisSpacing: 10,
                        childAspectRatio: (size.width/200),
                        primary: false,
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
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text("Request Portal", style: cardStyle,),
                                  SizedBox(height: 6,),
                                  Container(
                                      child: Image.asset('assets/images/request.png',height: 100)
                                  ),

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
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 10,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text("Substitute Faculty", style: cardStyle,),
                                  SizedBox(height: 6,),
                                  Container(
                                      child: Image.asset('assets/images/faculty.png',height: 150)
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context)=>FacultySearchHome())
                              );
                            },
                            splashColor: Colors.black54,
                            borderRadius: BorderRadius.circular(15),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 10,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text("Faculty Search", style: cardStyle,),
                                  SizedBox(height: 6,),
                                  Container(
                                      child: Image.asset('assets/images/star.jpg',height: 150)
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],
                        crossAxisCount: 1,
                      ),
                    )
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
