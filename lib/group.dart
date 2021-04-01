import 'package:flutter/material.dart';
import 'profile.dart';

class GroupChat extends StatefulWidget {
  final name;
  final password;
  final email;
  final message;
  const GroupChat(
      {Key key, this.message, @required this.name, this.password, this.email})
      : super(key: key);
  @override
  _GroupChatState createState() => new _GroupChatState();
}

class _GroupChatState extends State<GroupChat> {
  // This widget is the root of your application.

  final message = TextEditingController();
  final _messageKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Zoobie For you'), backgroundColor: Colors.black),
      body: Container(
          width: 500,
          height: 1000,
          child: Column(
            children: [
              Container(
                  width: 500,
                  height: 120,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 100,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/bob.jpeg',
                                  width: 40, height: 40)
                            ],
                          )),
                      Container(
                          width: 150,
                          height: 51,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('${widget.name}',
                                  style: TextStyle(color: Colors.white)),
                              Text('Online Now',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.italic))
                            ],
                          )),
                      Container(
                          width: 100,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/call.png',
                                  color: Colors.white, width: 30, height: 30),
                              Image.asset('assets/facetime.png',
                                  color: Colors.white, width: 30, height: 30)
                            ],
                          )),
                    ],
                  )),
              Container(
                  width: 500,
                  height: 603,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 200,
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [Text('Yesterday')],
                                ))
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(
                                        width: 3, color: Colors.black),
                                    borderRadius: BorderRadius.circular(10000)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('hi',
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ))
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                        width: 3, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10000)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('hi',
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ))
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                        width: 3, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10000)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('This is a good app.',
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ))
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(
                                        width: 3, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10000)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('I know right.',
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ))
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 200,
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [Text('Today')],
                                ))
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(
                                        width: 3, color: Colors.black),
                                    borderRadius: BorderRadius.circular(10000)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('I think this app is great.',
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ))
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    border: Border.all(
                                        width: 3, color: Colors.green),
                                    borderRadius: BorderRadius.circular(10000)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${widget.message}',
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ))
                          ])
                    ],
                  )),
              Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 100,
                          width: 428,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Form(
                                  key: _messageKey,
                                  child: Container(
                                      padding: EdgeInsets.all(5),
                                      width: 200,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          border: Border.all(
                                              width: 3, color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(10000)),
                                      child: TextFormField(
                                          validator: (value) {
                                            if (value.isEmpty) {
                                              return 'A message?';
                                            }

                                            return null;
                                          },
                                          controller: message,
                                          style:
                                              TextStyle(color: Colors.black)))),
                              GestureDetector(
                                  onTap: () {
                                    if (_messageKey.currentState.validate()) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return GroupChat(
                                                message: widget.message,
                                                name: widget.name,
                                                email: widget.email,
                                                password: widget.password);
                                          },
                                        ),
                                      );
                                    }
                                  },
                                  child: Image.asset('assets/arrow.png',
                                      width: 30,
                                      height: 30,
                                      color: Colors.white)),
                              Image.asset('assets/paper-clip.png',
                                  width: 30, height: 30, color: Colors.white),
                              Image.asset('assets/mic.png',
                                  width: 30, height: 30, color: Colors.white)
                            ],
                          ))
                    ],
                  ))
            ],
          )),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child:
                  Text('Drawer Header', style: TextStyle(color: Colors.white)),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text('Group Chat'),
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
            ),
            ListTile(
              title: Text('My account'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Profile(
                          name: widget.name,
                          email: widget.email,
                          password: widget.password);
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/logout", (r) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
