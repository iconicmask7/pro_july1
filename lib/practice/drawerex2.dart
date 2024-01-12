import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Two Containers and a ListView'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                margin: EdgeInsets.all(10),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.green,
                margin: EdgeInsets.all(10),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [

                // Add more list items as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
