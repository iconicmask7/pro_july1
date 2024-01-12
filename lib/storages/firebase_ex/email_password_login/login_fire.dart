import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:pro_july1/storages/firebase_ex/email_password_login/reg_fire.dart';

import 'firebase_helper.dart';
import 'home_fire.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );



    User? user=FirebaseAuth.instance.currentUser;
    runApp(MaterialApp(home:
    user == null ? Login_Fire():Home_Fire(),));
}

class Login_Fire extends StatelessWidget {

  final L_uname=TextEditingController();
  final L_pass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Firebase Login'),
        ),
        body: Column(
            children: [
              Text('Hello! Login Here!!', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Username'
                ),
                controller: L_uname,
              ),
              SizedBox(height: 15,),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),hintText: 'Password'
                ),
                controller: L_pass,
              ),
              SizedBox(height: 15,),
              MaterialButton(onPressed: (){
      final email = L_uname.text.trim();
      final pswd = L_pass.text.trim();
      FireBaseHelper().register(email: email,password:pswd).then((value){
        if(value==null){
          Navigator.push(context,MaterialPageRoute(builder:(context)=> Login_Fire()));
        } else{
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(value)));
        }
      });
    },

                child: Text('Login'),
                height: 70,minWidth: 120,),
              SizedBox(height: 15,),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Reg_Fire()));
              }, child:  Text('Not user? Register here!'))
            ],
            ),
        );
    }
}