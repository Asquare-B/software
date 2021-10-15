import 'package:flutter/material.dart';
import 'package:software/Welcome/login.dart';
import 'package:software/Welcome/signup.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          padding: EdgeInsets.symmetric(horizontal: 30 ,vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'Scheduler',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                      color: Color(0xffe89821),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Faculty and Extra Class Scheduler',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
              Container(
                height: size.height / 3,
                child: Image.asset('assets/images/start.jpg'),
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    color: Colors.orangeAccent,
                    splashColor: Colors.deepOrange,
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>Login())
                      );
                    },
                    height: 60,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context)=>SignupPage()
                          )
                      );
                    },
                    color: Colors.orangeAccent,
                    splashColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
