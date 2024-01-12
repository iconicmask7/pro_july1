import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Media(),
  ));
}

class Media extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query Seminar"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.yellow,
        height: height * 0.6, //half of the height size
        width: width * 0.5, //half of the width size
      ),
    );
  }
}