import 'package:flutter/material.dart';
import 'package:software/Drawer/menuDrawer.dart';
import 'package:software/Request/request.dart';
import 'package:software/Request/requestSent.dart';

class RequestHome extends StatefulWidget {
  const RequestHome({Key? key}) : super(key: key);

  @override
  _RequestHomeState createState() => _RequestHomeState();
}

class _RequestHomeState extends State<RequestHome> {
  @override
  Widget build(BuildContext context) {
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
        title: Text('Education Scheduler'),
      ),
      drawer: Menu(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Image.asset('assets/images/requestHome.jpg'),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Request())
                    );
                  },
                  splashColor: Colors.deepOrange,
                  color: Colors.orangeAccent,
                  child: Text(
                    'Received Request',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(width: 10,),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>RequestSent())
                    );
                  },
                  splashColor: Colors.deepOrange,
                  color: Colors.orangeAccent,
                  child: Text(
                    'Sent Request Status',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {},
              splashColor: Colors.deepOrange,
              color: Colors.orangeAccent,
              child: Text(
                'New Request',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
