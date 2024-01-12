import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

import 'package:simple_gradient_text/simple_gradient_text.dart';




void main() {
  runApp( MaterialApp(
    home: Ficard(),
  ));
}

class Ficard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Stack(
          children: [
            Container(
              height: 250,
              width:400,
              decoration:  BoxDecoration(
                  borderRadius: BorderRadiusDirectional.all(Radius.circular(30.0)),
                  color: Colors.teal
              ),
            ),
            Positioned(
              top :80,
              left:30,

              child: Row(
                children: [
                  Transform.rotate(
                      angle:90 * pi /180,
                      child:  FaIcon(FontAwesomeIcons.simCard,color:Colors.grey,)),
                  SizedBox(width:8 ,),

                  Transform.rotate(
                      angle: 90 * pi /180,
                      child: FaIcon(FontAwesomeIcons.wifi,color:Colors.grey,))
                ],

              ),
            ),



            Positioned(
                bottom:20,
                left: 20,
                child: Text("ANGEL",style :GoogleFonts.aBeeZee(fontSize: 28,color: Colors.grey),)),


            Positioned (
                bottom: 10,
                right: 20,
                child: Text("VISA",style :GoogleFonts.aBeeZee(fontSize: 28,color: Colors.grey),)),

            Positioned(
                top: 10,
                right: 20,
                child: GradientText("FI",
                  style: GoogleFonts.fahkwang(
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                  colors:[
                    Colors.black38,
                    Colors.white,
                    Colors.black26
                  ],
                  stops: [
                    0,.3,1
                  ],

                ))
          ],
        ),

      ),
    );
  }
}