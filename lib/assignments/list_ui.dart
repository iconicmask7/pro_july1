



import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ListView2()));
}

class ListView2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Center(child: Text('Cities Around World',
            style: TextStyle(
                fontWeight: FontWeight.bold),),),
          backgroundColor: Colors.deepOrange,
          toolbarHeight: 80,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30), // You can adjust the radius as needed
            ),
          ),
        ),
        body:ListView(
          children: [
            Container(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:10),
                child: Card(
                  color: Colors.orange,
                  child: ListTile(
                      title:
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Delhi',style: TextStyle(fontWeight: FontWeight.bold,fontSize:18),),
                          ),
                          Text('India',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          Padding(
                            padding: const EdgeInsets.only(left:70),
                            child: Text('Population:32.9 mill',style: TextStyle(fontSize: 12),),
                          ),
                        ],
                      ),
                      leading:Image.asset('assets/images/delhi.png',
                      )
                  ),
                ),
              ),
            ),
            Container(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:10),
                child: Card(
                  color: Colors.orange,
                  child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(left:10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Finland',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:5),
                              child: Text('Europe',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:55),
                              child: Text('Population:5.54 mill',style: TextStyle(fontSize:12),),
                            )
                          ],
                        ),
                      ),
                      leading: Image.asset('assets/images/newyork.png',)
                  ),
                ),
              ),
            ),
            Container(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:8),
                child: Card(
                  color: Colors.orange,
                  child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(left:30),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text('London',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),

                            ),
Padding(
padding: const EdgeInsets.only(right:35),
child: Text('UK',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
),
Padding(
padding: const EdgeInsets.only(left:45),
child: Text('Population:8.8 mill',style: TextStyle(fontSize: 12),),
)
],
),
),
leading: Image.asset('assets/images/vancouver.png')

),
),
),
),
Container(
height: 120,
child: Padding(
padding: const EdgeInsets.symmetric(vertical:10),
child: Card(
color: Colors.orange,
child: ListTile(
title: Padding(
padding: const EdgeInsets.only(left:30),
child: Column(
children: [
Padding(
padding: const EdgeInsets.all(8.0),
child: Text('Vancouver',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
),
Padding(
padding: const EdgeInsets.only(right:25),
child: Text('Canada',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
),
Padding(
padding: const EdgeInsets.only(left:25),
child: Text('Population:2.6 mill',style: TextStyle(fontSize: 12),),
),
],
),
),
leading: Container(
// height: 50,
// width:200,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
),
child: Image.asset('assets/images/london.png',)),
),
),
),
),

],
)
);
}
}
