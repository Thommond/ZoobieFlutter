import 'package:flutter/material.dart';
import 'group.dart';

class Profile extends StatefulWidget {
  final name;
  final password;
  final email;
  const Profile({Key key, @required this.name, this.password, this.email})
      : super(key: key);
  @override
  _ProfileState createState() => new _ProfileState();
}

class _ProfileState extends State<Profile> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: 500,
            height: 1000,
            child: Column(children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return GroupChat(
                              name: widget.name,
                              email: widget.email,
                              password: widget.password);
                        },
                      ),
                    );
                  },
                  child: Container(
                      width: 500,
                      height: 300,
                      decoration: BoxDecoration(color: Colors.black),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/arrow2.png',
                              color: Colors.white, width: 30, height: 30),
                          Text('My Account',
                              style: TextStyle(color: Colors.white))
                        ],
                      ))),
              Container(
                  width: 500,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 100,
                          height: 100,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/bob.jpeg")),
                          ))
                    ],
                  )),
              Container(
                  width: 500,
                  height: 100,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Name: ${widget.name}',
                          style: TextStyle(color: Colors.white))
                    ],
                  )),
              Container(
                  decoration: BoxDecoration(color: Colors.green),
                  width: 500,
                  height: 426,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 400,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(width: 3, color: Colors.black),
                              borderRadius: BorderRadius.circular(10000)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/edit.png',
                                  width: 30, color: Colors.white, height: 30),
                              Text('Edit Your Profile',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30))
                            ],
                          ))
                    ],
                  ))
            ])));
  }
}
