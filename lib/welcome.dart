import 'package:flutter/material.dart';
import 'signIn.dart';
import 'signUp.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeStateWidget createState() => new _WelcomeStateWidget();
}

class _WelcomeStateWidget extends State<Welcome> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Zoobie',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Center(
            child: Container(
                width: 500,
                height: 1000,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 500,
                          height: 597,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("assets/chat.jpeg"),
                            fit: BoxFit.cover,
                          ))),
                      Container(
                          width: 450,
                          height: 226,
                          decoration: BoxDecoration(color: Colors.black),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  'Zoobie the best office chatting app, find out why!',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return SignIn();
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                      width: 100,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 3, color: Colors.blue)),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text('Sign In',
                                                style: TextStyle(
                                                    color: Colors.white))
                                          ]))),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return SignUp();
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1, color: Colors.white)),
                                      ),
                                      child: Text('Create an Account',
                                          style:
                                              TextStyle(color: Colors.white))))
                            ],
                          ))
                    ]))));
  }
}
