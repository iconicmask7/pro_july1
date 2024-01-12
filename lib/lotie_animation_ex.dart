import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: LottieEx(),));
}


class LottieEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
       // Lottie.asset("assets/animation/animation1.json"),
        Lottie.network("https://lottie.host/8dd763ba-bc5d-4de0-8f9e-ab4add46e065/vpd3iUgTh8.json")
       // Lottie.network("https://lottie.host/b093d90c-0581-487f-8b2f-b3041d6fce24/dvzBoM4fkV.json")
      ),
    );
  }
}
