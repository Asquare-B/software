import 'package:flutter/material.dart';
import 'package:software/Drawer/menuDrawer.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              image: DecorationImage(
                image: AssetImage('assets/images/Untitled.png'),
                fit: BoxFit.fill,
              )
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
        ),
        title: Text(
          'Education Scheduler', style: TextStyle(color: Colors.black),),
      ),
      drawer: Menu(),
      body: Stack(
        children: [
          SizedBox(
            height: 115,
            width: 115,
            child: Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profile.png"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        child: Row(
          children: [
            Expanded(child: Text(text)),
          ],
        ),
      ),
    );
  }
}