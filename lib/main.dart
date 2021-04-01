import 'package:flutter/material.dart';
// import 'profile.dart';
// import 'signUp.dart';
//import 'group.dart';

import 'welcome.dart';

void main() {
  runApp(MaterialApp(
    home: Welcome(),
    routes: {
      "/logout": (_) => new Welcome(),
    },
  ));
}
