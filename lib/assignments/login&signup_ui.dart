import 'package:flutter/material.dart';

import 'package:pro_july1/assignments/regis.dart';

import 'login.dart';


void main(){
  runApp(MaterialApp(home: Loginandsignup(),));
}
class Loginandsignup extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Hello There!",
                style:TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ) ,),
              Text("Automatic identity verification which enable you to verify your identity",
                style: TextStyle(
                    color: Colors.grey
                ),),
              Image(
                image: AssetImage("assets/icons/halloween_horror.png"),
                width: 150,
                height: 150,
              ),
              new SizedBox(width: 200,height: 36,
                child: ElevatedButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> Loginui()));
                }
                  , child: Text("Login"),
                  style: ElevatedButton.styleFrom(primary: Colors.green,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26))),
                ),
              ),
              SizedBox(width: 200,height: 36,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>REg()));
                  },
                  child: Text("Sign Up"),
                  style: ElevatedButton.styleFrom(primary: Colors.green,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
