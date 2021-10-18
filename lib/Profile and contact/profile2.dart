import 'package:flutter/material.dart';
import 'package:software/Drawer/menuDrawer.dart';
import 'package:flutter/rendering.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardStyle = TextStyle( fontSize: 20,fontWeight: FontWeight.w800);
    var cardStyle1 = TextStyle( fontSize: 16,fontWeight: FontWeight.w600);
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
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/profile.png',height: 200,)
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Card(
                      color: Color.fromRGBO(255,165,0,100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                      ),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Name:',style: cardStyle),
                            Text('StudentName',style: cardStyle1),
                          ],
                        ),
                      )
                  ),
                  Card(
                      color: Color.fromRGBO(255,165,0,100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                      ),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Reg.No.:',style: cardStyle),
                            Text('Registered No',style: cardStyle1),
                          ],
                        ),
                      )
                  ),
                  Card(
                      color: Color.fromRGBO(255,165,0,100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                      ),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('School:',style: cardStyle),
                            Text("School's name",style: cardStyle1),
                          ],
                        ),
                      )
                  ),
                  Card(
                      color: Color.fromRGBO(255,165,0,100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                      ),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Email:",style: cardStyle),
                            Text('Student Email',style: cardStyle1),
                          ],
                        ),
                      )
                  ),
                  Card(
                      color: Color.fromRGBO(255,165,0,100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                      ),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Phone:',style: cardStyle),
                            Text('Mobile Number',style: cardStyle1),
                          ],
                        ),
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}