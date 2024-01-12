import 'package:flutter/material.dart';


import 'login.dart';

class REg extends StatefulWidget {


  @override
  State<REg> createState() => _REgState();
}

class _REgState extends State<REg> {

  final formkey = GlobalKey<FormState>();
  String? pass;
  bool passwordhidden=true;
  bool cpasshidden=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
        key: formkey,
        child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Text('Sign Up',
        style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
    Text("Creat an Account.Its free",
    style: TextStyle(
    color: Colors.grey
    ),),
    Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextFormField(
    decoration:  InputDecoration(
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10)
    ),
    hintText: 'Email ID'),
    ///here the value entered at text form field will stored at uname
    validator: (uname) {
    if (uname!.isEmpty ||
    !uname.contains('@') ||
    !uname.contains('.com')) {
    return 'username must not be empty/ or invalid';
    } else {
    return null;}
    },
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextFormField(
    obscuringCharacter: "*",
    obscureText: passwordhidden,
    validator: (password) {
    pass = password;
    if (password!.isEmpty || password.length < 6) {
    return 'Password must not be empty/ password length must be > 6';
    } else {
    return null;}
    },
    decoration:  InputDecoration(
    suffixIcon: IconButton(
    onPressed: (){
    setState(() {
    if(passwordhidden==true)
    {   passwordhidden=false;   }
    else
    {
    passwordhidden=true;}
    });
    },
    icon:Icon(passwordhidden==true ?
    Icons.visibility_off_sharp:
    Icons.visibility)
    ),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10)
    ),
    hintText: 'Password',
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextFormField(
    validator: (cpassword) {
    if (cpassword!.isEmpty || cpassword == pass) {
    return 'Password must be same/ field must not be empty';
    } else {
    return null;
    }
    },obscureText: cpasshidden,
    obscuringCharacter: "*",
    decoration:  InputDecoration(
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10)
    ),
        hintText: 'Password',
        suffixIcon: IconButton(
            onPressed: (){
              setState(() {
                if(cpasshidden==true)
                {
                  cpasshidden=false;}
                else
                {
                  cpasshidden=true;}
              });
            }, icon:Icon(cpasshidden==true?
        Icons.visibility_off_sharp:Icons.visibility) )
    ),
    ),
    ),
          SizedBox(height: 36,width: 500,
            child: ElevatedButton(onPressed: () {
              final valid= formkey.currentState!.validate();
              if(valid)
              {

              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Invalid !!!!!"))
                );
              }
            }, child: Text("Sign Up"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26))

              ),),
          ),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=>Loginui()));
          },
              child: Text("Do you have an account? Login",
                style: TextStyle(
                    color: Colors.grey
                ),))
        ],
        ),
        ),
        ),
    );
  }
}
