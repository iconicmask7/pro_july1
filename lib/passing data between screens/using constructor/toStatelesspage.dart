import 'package:flutter/material.dart';

class DataStateless extends StatelessWidget {
  String name;
  String ? location;
  int phone;
  String img;
 DataStateless({ required this.name,   this.location, required this.phone,required this.img});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("name"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(img,height:100,),
            Text("Name : $name",style: TextStyle(fontSize:20)),
            Text("Location : $location",style: TextStyle(fontSize:20)),
            Text("Phone : $phone",style: TextStyle(fontSize:20)),
            Text("Image : $img",style: TextStyle(fontSize:20)),

          ],
        ),
      ),
    );
  }
}
