import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("Mobile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

          child: Column(
            children:[
              Padding(padding: EdgeInsets.all(8),
              child: AspectRatio(aspectRatio: 16/9,
            child: Container(
              color: Colors.yellow,
            ),),),
            Expanded(
              child: ListView.builder(itemBuilder:(context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.pinkAccent,
                      height: 120,
                  ),
                );

              },
              itemCount: 8,)
            ),
          ],
      ),
      ),
    );
  }
}
