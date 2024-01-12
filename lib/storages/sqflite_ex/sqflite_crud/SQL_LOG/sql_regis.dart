
import 'package:flutter/material.dart';

import 'package:pro_july1/storages/sqflite_ex/sqflite_crud/SQL_LOG/sq_fun.dart';
import 'package:pro_july1/storages/sqflite_ex/sqflite_crud/SQL_LOG/sql_login_.dart';
class SQL_Register extends StatelessWidget {
  var name=TextEditingController();
  var uname = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {

    void SaveCreds(String name,String username, String password) async {
      var id = await SQL_Func.SaveCreds(name,username, password);
      if (id != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(
            builder: (context) => SQL_Login()));
      }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('registartion failed')));
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Name'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: uname,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: pass,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password'
                ),
              ),
            ),

            Padding(
              padding:
              const EdgeInsets.all(25),
              child:
              ElevatedButton(onPressed:
                  () {
                SaveCreds(name.text, uname.text, pass.text);
              },
                  child:
                  const Text('Register', style:
                  TextStyle(fontSize:
                  18))),
            ),
          ],
        ),
      ),
    );
  }
}