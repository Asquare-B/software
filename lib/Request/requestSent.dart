import 'package:flutter/material.dart';
import 'package:software/Drawer/menuDrawer.dart';
import 'package:software/Request/requestDetials2.dart';

class RequestSent extends StatefulWidget {
  const RequestSent({Key? key}) : super(key: key);

  @override
  _RequestSentState createState() => _RequestSentState();
}

class _RequestSentState extends State<RequestSent> {
  @override
  Widget build(BuildContext context) {
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
        title: Text('Request Portal'),
      ),
      drawer: Menu(),
      body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20,),
              Center(
                child: Text(
                  'Sent Request',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Column(
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/images/profile.png'),
                                  radius: 50,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Username',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Text(
                                    'Registered ID',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 5,)
                                ],
                              ),
                            ],
                          ),
                          Column(

                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Slot',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                'Date',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          MaterialButton(
                            height: 45,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.lightBlueAccent,
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => RequestDetails2())
                              );
                            },
                            child: Text('Request\nDetails', style: TextStyle(fontSize: 15),),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}
