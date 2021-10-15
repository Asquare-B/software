import 'package:flutter/material.dart';
import 'package:software/Drawer/menuDrawer.dart';

class RequestDetails2 extends StatefulWidget {
  const RequestDetails2({Key? key}) : super(key: key);

  @override
  _RequestDetailsState2 createState() => _RequestDetailsState2();
}

class _RequestDetailsState2 extends State<RequestDetails2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
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
        title: Text('Request Portal'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Center(
              child: Text(
                'Sent Request Details',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Column(
              children: <Widget>[

              ],
            ),
          ],
        ),
      ),
    );
  }
}
