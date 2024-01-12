import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:pro_july1/practice/wsplash.dart';

void main(){
  runApp(MaterialApp(home: IntroScreen(),));
}


class IntroScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    PageDecoration decorationPage = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 30,fontWeight:FontWeight.bold,color: Colors.black),
      bodyTextStyle:  TextStyle(
          fontSize: 30,fontWeight:FontWeight.bold,color: Colors.black),
      boxDecoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.white,Colors.yellow,Colors.orangeAccent],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight)
        ),

      );
      

    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: decorationPage,
          title: "First Page",
          body: "Introduction Screen allows you to have a screen on an app's first launch to, for example, explain your app. This widget is very customizable with a great design.",
          image: IntroImage("https://images.unsplash.com/photo-1526791039942-190d4013c902?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwxNjY1MDg5fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
        ),
        PageViewModel(
          title: "Second Page",
          body: "Introduction Screen allows you to have a screen on an app's first launch to, for example, explain your app. This widget is very customizable with a great design.",
          image: IntroImage("https://images.unsplash.com/photo-1541364983171-a8ba01e95cfc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8MTU0MjU5fHxlbnwwfHx8fHw%3D&dpr=1&auto=format&fit=crop&w=294&h=294&q=60"),
        ),
        PageViewModel(
          title: "Third Page",
          body: "Introduction Screen allows you to have a screen on an app's first launch to, for example, explain your app. This widget is very customizable with a great design.",
          image: IntroImage("https://images.unsplash.com/photo-1536146021566-627ce3c4d813?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8MjM3MzEwOXx8ZW58MHx8fHx8&dpr=1&auto=format&fit=crop&w=294&h=294&q=60 "),
        )
      ],
      onSkip: ()=> Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=> Splash2()),
      ),
      onDone: ()=> Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=> Splash2()),
      ),
      showNextButton: true,
      skip: Text("Skip"),
      next: Icon(Icons.arrow_forward_rounded),
      done: Text("Done"),
      dotsDecorator: DotsDecorator(
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25)
          )
        ),
        size: Size(12, 10),
        activeSize:Size(22,10) ,
        activeColor: Colors.green
      ),
    );
  }
  Widget IntroImage(String imgpath) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
          width:double.infinity,
        height: 400,
        decoration: BoxDecoration(
          image:DecorationImage(
          fit:BoxFit.cover,
          image: NetworkImage(imgpath))
      ),

        ),

    );
  }
  }

