import 'package:flutter/material.dart';
import 'signIn.dart';
import 'group.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpWidgetState createState() => new _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUp> {
  // This widget is the root of your application.
  final _signUpKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                decoration: BoxDecoration(color: Colors.black),
                width: 500,
                height: 1000,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            width: 100,
                            height: 100,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Back',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal))
                                ]))),
                    Container(
                        decoration: BoxDecoration(color: Colors.black),
                        height: 276,
                        width: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 420,
                                height: 100,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('Zoobie',
                                          style: TextStyle(
                                              fontSize: 50,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold))
                                    ])),
                            Container(
                                width: 420,
                                height: 25,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('Welcome to Zoobie!',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontStyle: FontStyle.italic))
                                    ]))
                          ],
                        )),
                    Container(
                        decoration: BoxDecoration(color: Colors.green),
                        width: 450,
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Form(
                                key: _signUpKey,
                                child: Column(children: [
                                  Container(
                                      height: 110,
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          border: Border.all(
                                              width: 3, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10000)),
                                      width: 300,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                                        width: 1,
                                                        color: Colors.black)),
                                              ),
                                              child: Container(
                                                  margin: EdgeInsets.all(10),
                                                  child: Text('Email:',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white)))),
                                          Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.grey),
                                              width: 100,
                                              height: 50,
                                              child: Column(children: <Widget>[
                                                TextFormField(
                                                    validator: (value) {
                                                      if (!value
                                                          .contains('@')) {
                                                        return 'Please enter valid email';
                                                      }

                                                      return null;
                                                    },
                                                    controller: email,
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              ]))
                                        ],
                                      )),
                                  Container(
                                      height: 110,
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          border: Border.all(
                                              width: 3, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10000)),
                                      width: 300,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                                        width: 1,
                                                        color: Colors.black)),
                                              ),
                                              child: Container(
                                                  margin: EdgeInsets.all(10),
                                                  child: Text('Name:',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white)))),
                                          Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.grey),
                                              width: 100,
                                              height: 50,
                                              child: Column(children: <Widget>[
                                                TextFormField(
                                                    validator: (name) {
                                                      if (name.isEmpty) {
                                                        return 'Please enter valid name';
                                                      }
                                                      return null;
                                                    },
                                                    controller: name,
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              ]))
                                        ],
                                      )),
                                  Container(
                                      height: 110,
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          border: Border.all(
                                              width: 3, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10000)),
                                      width: 300,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                                        width: 1,
                                                        color: Colors.black)),
                                              ),
                                              child: Container(
                                                  margin: EdgeInsets.all(10),
                                                  child: Image.asset(
                                                    'assets/key.png',
                                                    color: Colors.white,
                                                    width: 30,
                                                    height: 30,
                                                  ))),
                                          Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.grey),
                                              width: 100,
                                              height: 50,
                                              child: Column(children: <Widget>[
                                                TextFormField(
                                                    validator: (password) {
                                                      if (password.isEmpty) {
                                                        return 'Please enter valid password';
                                                      }
                                                      return null;
                                                    },
                                                    controller: password,
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              ]))
                                        ],
                                      ))
                                ])),
                            GestureDetector(
                                onTap: () {
                                  if (_signUpKey.currentState.validate()) {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return GroupChat(
                                          name: name.text,
                                          email: email.text,
                                          password: password.text);
                                    }));
                                  }
                                },
                                child: Container(
                                    margin: EdgeInsets.all(10),
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        border: Border.all(
                                            width: 3, color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(10000)),
                                    width: 300,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            height: 80,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              border: Border(
                                                  right: BorderSide(
                                                      width: 1,
                                                      color: Colors.black)),
                                            ),
                                            child: Container(
                                                height: 50,
                                                margin: EdgeInsets.all(10),
                                                child: Image.asset(
                                                  'assets/arrow.png',
                                                  color: Colors.white,
                                                  width: 30,
                                                  height: 30,
                                                ))),
                                        Container(
                                            height: 30,
                                            child: Text('Register',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                )))
                                      ],
                                    )))
                          ],
                        )),
                    Container(
                        decoration: BoxDecoration(color: Colors.black),
                        width: 450,
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
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
                                    child: Text('Already a user? Sign In!',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ))))
                          ],
                        ))
                  ],
                ))));
  }
}
