import 'package:flutter/material.dart';

import 'package:pro_july1/storages/sqflite_ex/sqflite_crud/SQL_LOG/sql_login_.dart';
import 'package:pro_july1/storages/sqflite_ex/sqflite_crud/SQL_LOG/sql_regis.dart';

void main(){
  runApp(MaterialApp(
    home: SQL_Login_Signup(),
  ));
}

class SQL_Login_Signup extends StatefulWidget {
  const SQL_Login_Signup({super.key});

  @override
  State<SQL_Login_Signup> createState() => _SQL_Login_SignupState();
}

class _SQL_Login_SignupState extends State<SQL_Login_Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 5),
              child: MaterialButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SQL_Login()));
              },
                color: Colors.lightBlueAccent,
                child: ListTile(
                  title: Text('Login'),
                  trailing: Icon(Icons.login),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 5),
              child: MaterialButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SQL_Register()));
              },
                color: Colors.green,
                child: ListTile(
                  title: Text('Register'),
                  trailing:Icon(Icons.app_registration),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}