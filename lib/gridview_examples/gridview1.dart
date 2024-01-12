import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Gridview1(),));
}

class Gridview1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid view1"),
      ),
      body: GridView(
       // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150),

        children: List.generate(20, (index) => Card(
          color: Colors.primaries[index % Colors.primaries.length],
          child: Icon(Icons.adb),
        )),
      ),
    );
  }
}
