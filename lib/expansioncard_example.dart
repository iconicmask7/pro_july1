import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ExpansionTileEx(),));
}


class ExpansionTileEx extends StatelessWidget {
  const ExpansionTileEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expansion card"),
      ),
      body: Column(
        children: [
          ExpansionTile(title: Text("Colors"),
          subtitle: Text("Expand to view more"),
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.pink,
              ),
              title: Text("Pink"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.pink,
              ),
              title: Text("Pink"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.pink,
              ),
              title: Text("Pink"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.pink,
              ),
              title: Text("Pink"),
            )
          ],),
    ExpansionTile(title: Text("Colors"),
    subtitle: Text("Expand to view more"),
    children: [
    ListTile(
    leading: CircleAvatar(
    backgroundColor: Colors.pink,
    ),
    title: Text("Pink"),
    ),
    ],
    ),

        ],

      ),
    );
  }
}
