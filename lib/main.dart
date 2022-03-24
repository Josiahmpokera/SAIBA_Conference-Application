import 'package:flutter/material.dart';
import 'package:saiba_conference_app/signup.dart';

import 'home/homeScreen.dart';

void main(){
  runApp(const MyApplication());
}

class MyApplication extends StatefulWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  State<MyApplication> createState() => _MyApplicationState();
}

class _MyApplicationState extends State<MyApplication> {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: SignUp(),
      home: HomeScreen(),
    );
  }
}
