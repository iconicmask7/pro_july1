import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';
import 'registration.dart';
// void main(){
//   runApp(MaterialApp(
//     home: Login_Page(),
//   )) ;
// }


class Login_Page extends StatelessWidget{
  String username = "admin@gmail.com";
  String password ="abc123";

  final uname_controller = TextEditingController();
  final pass_controller =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Image.asset("assets/icons/Flight.png",
              height: 100,
              width: 100,
            ),
            Text(
              "My App July",
              style: GoogleFonts.cabinSketch(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  color: Colors.lightBlue

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: TextField(
                controller: uname_controller,
                decoration: InputDecoration(
                    hintText: "UserName",
                    labelText: "UserName",
                    helperText: "Username must be an email",
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: pass_controller,
                decoration: InputDecoration(
                    hintText:"password",
                    labelText: "password",
                    helperText: "Password must contain 6 characters",
                    prefixIcon: Icon(Icons.abc_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                    )
                ),
              ),
            ),
            ElevatedButton(onPressed:() {
              if (username == uname_controller.text && password == pass_controller.text)
                {
                  Navigator.of(context).push(MaterialPageRoute(builder:( context)=> Home()));
                }
              else{
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Invalid Username/Password or the Fields are empty"),
                backgroundColor: Colors.red,));
              }
            }, child: Text("Login ")),

            TextButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Registration_Page()));
            }, child: Text("Not a user? Signup here!!!")),

          ],
        ),
      ) ,
    );
  }

}
