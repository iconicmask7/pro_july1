import 'dart:async';

import 'package:flutter/material.dart';

import '2login_signup.dart';
void main(){
  runApp(MaterialApp(home: IntroScreenState(),
    debugShowCheckedModeBanner: false,));
}

class IntroScreenState extends StatefulWidget {

  @override
  State<IntroScreenState> createState() => _IntroScreenStateState();
}

class _IntroScreenStateState extends State<IntroScreenState> {
  @override

  void initState() {
    Timer(const Duration (seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Login_signup()));
    });
    super.initState();
  }

    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset("assets/images/loggggpng-hq.png",
          width: 250,
          height: 250,),

      ),
    );
  }
}
