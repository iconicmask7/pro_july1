import 'package:flutter/material.dart';

class DataStateful extends StatefulWidget {
  String name;
  String ? location;
  int phone;
  String img;
   DataStateful({ required this. name, this. location, required this.phone,required this.img});

  @override
  State<DataStateful> createState() => _DataStatefulState();
}

class _DataStatefulState extends State<DataStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("name"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(widget.img,height:100,),
            Text("Name : $widget.name",style: TextStyle(fontSize:20)),
            Text("Location : $widget.location",style: TextStyle(fontSize:20)),
            Text("Phone : $widget.phone",style: TextStyle(fontSize:20)),
            Text("Image : $widget.img",style: TextStyle(fontSize:20)),

          ],
        ),
      ),
    );
  }
}
