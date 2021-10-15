import 'package:flutter/material.dart';

class PageTop extends StatefulWidget {
  const PageTop({Key? key}) : super(key: key);

  @override
  _PageTopState createState() => _PageTopState();
}

class _PageTopState extends State<PageTop> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
