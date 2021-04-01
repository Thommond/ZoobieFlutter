import 'package:flutter/material.dart';
import 'signUp.dart';
import 'group.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInWidgetState createState() => new _SignInWidgetState();
}

class _SignInWidgetState extends State<SignIn> {
  // This widget is the root of your application.

  final _signInKey = GlobalKey<FormState>();
  final name = 'bob kelly smith 2.0';
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                width: 500,
                height: 1000,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(color: Colors.black),
                        height: 426,
                        width: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text('Back',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontWeight:
                                                      FontWeight.normal))
                                        ]))),
                            Container(
                                width: 320,
                                height: 100,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
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
                                      Text('Welcome Back!',
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
                        height: 400,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Form(
                                key: _signInKey,
                                child: Column(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            border: Border.all(
                                                width: 3, color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(10000)),
                                        width: 300,
                                        height: 110,
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
                                                      'assets/profile.png',
                                                      color: Colors.white,
                                                      width: 30,
                                                      height: 30,
                                                    ))),
                                            Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.grey),
                                                width: 100,
                                                height: 50,
                                                child:
                                                    Column(children: <Widget>[
                                                  TextFormField(
                                                      validator: (email) {
                                                        if (!email
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
                                        margin: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            border: Border.all(
                                                width: 3, color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(10000)),
                                        width: 300,
                                        height: 110,
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
                                                child:
                                                    Column(children: <Widget>[
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
                                  ],
                                )),
                            GestureDetector(
                                onTap: () {
                                  if (_signInKey.currentState.validate()) {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return GroupChat(
                                          name: name,
                                          email: email.text,
                                          password: password.text);
                                    }));
                                  }
                                },
                                child: Container(
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        border: Border.all(
                                            width: 3, color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(10000)),
                                    width: 300,
                                    height: 110,
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
                                                  'assets/arrow.png',
                                                  color: Colors.white,
                                                  width: 30,
                                                  height: 30,
                                                ))),
                                        Container(
                                            child: Text('Sign In',
                                                style: TextStyle(
                                                    color: Colors.white)))
                                      ],
                                    )))
                          ],
                        )),
                    Container(
                        decoration: BoxDecoration(color: Colors.black),
                        width: 450,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                child: Text('Lost Password',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ))),
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
                                    child: Text('Register',
                                        style: TextStyle(color: Colors.white))))
                          ],
                        ))
                  ],
                ))));
  }
}
