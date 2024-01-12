import 'package:flutter/material.dart';

import 'package:pro_july1/storages/sqflite_ex/sqflite_crud/SQL_LOG/sq_fun.dart';
import 'package:pro_july1/storages/sqflite_ex/sqflite_crud/SQL_LOG/sq_home.dart';

class SQL_Login extends StatefulWidget {
  @override
  State<SQL_Login> createState() => _SQL_LoginState();
}

class _SQL_LoginState extends State<SQL_Login> {
  var lname=TextEditingController();
  var lpass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: lname,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),hintText: 'Username'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: lpass,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),hintText: 'Password'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(onPressed: (){
                logincheck(lname.text,lpass.text);
              }, child: Text('Login')),
            )
          ],
        ),
      ),
    );
  }

  void logincheck(String username, String password)async {
    var data = await SQL_Func.CheckLogin(username, password);

    if (data.isNotEmpty) {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => SQL_Home()));
      print('Login Success');
    }
  }}