import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Gridview2(),));
}

class Gridview2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 5,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4), itemBuilder: (context,index){
            return Card(
              color: Colors.primaries[index % Colors.primaries.length],
              child: Text("Helo"),
            );
      }),
    );
  }
}
