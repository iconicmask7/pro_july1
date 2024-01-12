import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:pro_july1/storages/hive_using_typeadapter/views/reg_hive.dart';

import '../database/hivedb.dart';
import '../model/users.dart';
import 'hive_home.dart';



void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox<Users>('Users');
  Hive.registerAdapter(UsersAdapter());
  runApp(GetMaterialApp(home: Hive_Login(),));}

class Hive_Login extends StatelessWidget {
  final email_controller =TextEditingController();
  final pwd_controller =TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Registration Page"),
              SizedBox(height: 15,),

              TextField(
                controller: email_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email"
                ) ,
              ),
              TextField(
                controller: pwd_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password"
                ) ,
              ),
              MaterialButton(onPressed: () async {
                final user=await HiveDB.instance.getUsers();
                validateLogin(user);


              },
                shape: StadiumBorder(),
                color: Colors.pink,
                child: Text("Register Here"),),
              TextButton(onPressed: (){
                Get.to(Hive_Reg());
              }, child: Text("Not a user Register Here !!!"))
            ],
          ),
        ),
      ),
    );
  }

Future <void> validateLogin(List<Users>users)async{
    final email=email_controller.text.trim();
    final pwd=pwd_controller.text.trim();
    bool userFound=true;
    if (email !="" && pwd !="") {
      await Future.forEach(users,(user)
      {
        if (user.email == email && user.password == pwd) {
          userFound = true;
        }else{
          userFound = false;
        }
      });
      if(userFound==true) {
        Get.offAll(()=> HiveHome(email: email));
        Get.snackbar("Success", "Login Succes",
            backgroundColor: Colors.green);
      }else{
        Get.snackbar("Error", "Login Failed, No User Exists",
        backgroundColor: Colors.red);

        
        
        }
      }
    }
}
