import 'package:flutter/material.dart';


import 'firebase_helper.dart';
import 'login_fire.dart';

class Reg_Fire extends StatelessWidget {

  final R_pass=TextEditingController();
  final R_uname=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Firebase Register'),
        ),
        body: Column(
            children: [
              Text('Hello! Login Here!!', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Username'
                ),
                controller: R_uname,
              ),
              SizedBox(height: 15,),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),hintText: 'Password'
                ),
                controller: R_pass,
              ),
              SizedBox(height: 15,),
              MaterialButton(onPressed: (){
                final email = R_uname.text.trim();
                final pswd = R_pass.text.trim();
                FireBaseHelper().register(email: email,password:pswd).then((value){
                  if(value==null){
    Navigator.push(context,MaterialPageRoute(builder:(context)=> Login_Fire()));
    } else{
                    ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(value)));
                }
                });
              },
                  color:Colors.deepOrangeAccent,

                  child: Text('Register'),
                  height:70,minWidth: 120)
            ],
            ),
        );
    }
}