import 'package:flutter/material.dart';

import '3login.dart';
void main() {
  runApp(MaterialApp(
    home: Tour_Sign_up(),
  ));
}

class Tour_Sign_up extends StatefulWidget {
  const Tour_Sign_up({super.key});

  @override
  State<Tour_Sign_up> createState() => _Tour_Sign_upState();
}

class _Tour_Sign_upState extends State<Tour_Sign_up> {
  final formkey = GlobalKey<FormState>();
  String? pass;
  String? cpass;
  bool passwordhidden = true;
  bool cpasswordhiden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            children: [

              Container(
                height: 200,
                width: 250,
                child: Image.asset('assets/images/loggggpng-hq.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
                ),
              ),
              Text('Create an account,its free!'),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Email ID',
                      helperText: 'Field must not be empty',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.visibility_off),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (passwordhidden == true) {
                                  passwordhidden = false;
                                } else {
                                  passwordhidden = true;
                                }
                              });
                            },
                            icon: passwordhidden == true
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility)),
                        labelText: 'password',
                        helperText:
                        'password must contain atleast 6 characters',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                    validator: (password) {
                      pass = password;
                      if (password!.isEmpty || password.length < 6) {
                        return 'password must not be empty and must contain atleast 6 characters';
                      } else {
                        return null;
                      }
                    },
                    obscureText: passwordhidden,
                    obscuringCharacter: '*'),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 20, top: 15),
                child: TextFormField(

                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (cpasswordhiden == true) {
                                cpasswordhiden = false;
                              } else {
                                cpasswordhiden = true;
                              }
                            });
                          },
                          icon: cpasswordhiden == true
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility)),

                      prefixIcon: Icon(Icons.visibility_off),
                      labelText: 'Confirm password',
                      helperText: 'Please  re-enter you password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  obscureText: cpasswordhiden,
                  obscuringCharacter: '*',
                ),
              ),
              Container(
                height: 60,
                width: 1000,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('login');

                    },
                    child: Text(
                      'Sign Up',
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45)))),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Tour_Signin()));
                  },
                  child: Text('Already have an account? Login'))
            ],
          ),
        ),
      ),
    );
  }
}