import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridView5(),));
}

class GridView5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.custom(
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
            childrenDelegate: SliverChildBuilderDelegate((context, index) =>
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(  fit:BoxFit.cover,
                        image: AssetImage("assets/images/ironman.jpg"),
                        )) ),

                    Positioned(
                      bottom: 20,
                        right: 20,
                      child: Text("IRONMAN",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    Positioned(
                      top: 20,
                        right: 20,
                        child: Icon(Icons.local_fire_department_rounded,
                        color: Colors.white,
                            size: 20,))
                  ],
                ))));
  }
}