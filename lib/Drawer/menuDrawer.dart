import 'package:software/Request/requestHome.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 15,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage('assets/images/Untitled.png'),
                    fit: BoxFit.cover
                )
            ),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                    radius: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight - Alignment(0,.2),
                  child: Text(
                    'Username',
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight + Alignment(0,.3),
                  child: Text(
                    'Register ID',
                    style: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight + Alignment(0, .83),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child:Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('Verified', style: TextStyle(color: Colors.blue),),
                    ) ,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => RequestHome()
                )
              );
            },
            child: buttonTile("Request Portal"),
          ),
          GestureDetector(
            child: buttonTile("Faculty Search"),
          ),
          GestureDetector(
            child: buttonTile("Student Search"),
          ),
          GestureDetector(
            child: buttonTile("Profile"),
          ),
          GestureDetector(
            child: buttonTile("About us"),
          ),
        ],
      ),
    );
  }
}

Widget buttonTile(String text){
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, top: 0.0, right: 8.0, bottom: 0.0),
    child: Container(
      height: 50,
      child: InkWell(
        splashColor: Colors.amberAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,style: TextStyle(fontSize: 16),),
            Icon(Icons.arrow_right)
          ],
        ),
      ),
    ),
  );
}