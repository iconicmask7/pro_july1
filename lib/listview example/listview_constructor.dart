import 'package:flutter/material.dart';



void main(){
runApp(MaterialApp(
  theme: ThemeData(primarySwatch: Colors.teal),
  home: ListView1(),));
}
class ListView1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("ListView 1"),

      ),
      body: ListView(
        children: [
          Card(child: ListTile(
            title: Text("Aibel"),
            leading: Icon(Icons.people_alt_rounded),
           subtitle: Text("This is a sample subtitle"),
            trailing: Text("10:20"),
          )),
          Card(child: ListTile(
          leading: CircleAvatar(backgroundImage:AssetImage("assets/images/dp.jpg")),
            title: const Text("Angel"),
            subtitle: Text("This is a sample subtitle"),
            trailing: Text("10:20"),)),
          Card(child: ListTile(
    leading: CircleAvatar(backgroundImage:AssetImage("assets/images/dp2.jpg")),
    title: const Text("Agnel"),
    subtitle: Text("This is a sample subtitle"),
    trailing: Column(
      mainAxisSize:MainAxisSize.min,
      children: [

        Text("10:20"),
        CircleAvatar(
          minRadius:6,
          maxRadius: 12,
          backgroundColor: Colors.green,
        child: Text("2"),)
      ],
    ),)),
          Text("Product 4"),
          Text("Product 5"),
          Text("Product 6"),
          Text("Product 7"),
          Text("Product 8"),
          Text("Product 9"),
          Text("Product 10"),

        ],
      ),
    );
  }
}
