import 'package:flutter/material.dart';

import 'package:pro_july1/passing%20data%20between%20screens/using%20constructor/toStatefulpage.dart';
import 'package:pro_july1/passing%20data%20between%20screens/using%20constructor/toStatelesspage.dart';

import '../using navigator/dummydata.dart';
void main(){
  runApp(MaterialApp(home: MainPage2(),));
}
class MainPage2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data passing"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder:(context)=> DataStateless(
              name:"Luminar",
              location:"Kakkanad",
              phone:987654389,
              img:products[3]["Image"]
            ))), child: Text("To Stateless")),
            ElevatedButton(onPressed: () =>Navigator.of(context).push(MaterialPageRoute(builder:(context)=> DataStateful(
              name:"Luminar",
              location:"Kakkanad",
              phone:987654389,
                img:products[0]["Image"]
            ))), child: Text("To Stateful")),

          ],
        ),
      ),
    );
  }
}
