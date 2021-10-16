import 'package:flutter/material.dart';
import 'package:software/Drawer/menuDrawer.dart';
class Extra1 extends StatefulWidget {
  const Extra1({Key? key}) : super(key: key);

  @override
  _Extra1State createState() => _Extra1State();
}

class _Extra1State extends State<Extra1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
