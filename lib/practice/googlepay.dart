import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Gpay(),));
}
class Gpay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: Colors.black87,
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: NetworkImage("https://static1.xdaimages.com/wordpress/wp-content/uploads/2020/12/Google-Pay-dark-theme-featured.jpg?q=50&fit=contain&w=1140&h=&dpr=1.5") ,width:400,height:400),
      Text("Google", style:GoogleFonts.josefinSans(
          fontSize:50,
          color:Colors.white,

      ),
      )
    ]

  ) )
  );
  }
}
