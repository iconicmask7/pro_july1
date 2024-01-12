import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Tour_Payment extends StatelessWidget {
  const Tour_Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Lottie.asset('assets/animation/payment success.json')
      ),
    );
  }
}