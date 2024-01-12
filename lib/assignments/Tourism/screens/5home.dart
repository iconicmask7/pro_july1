import 'package:flutter/material.dart';

import '../data/dummydata.dart';

class Tour_Home extends StatelessWidget {
  const Tour_Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text(
              'GoFast',
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: Icon(Icons.menu, color: Colors.black),
            actions: [
              CircleAvatar(child: Icon(Icons.person)),
            ],
            bottom: AppBar(
              backgroundColor: Colors.white,
              title: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(45),
                ),
                width: double.infinity,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: ()=>
                        Navigator.of(context).pushNamed('details', arguments: details[index]['Id']),

                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(image: NetworkImage(details[index]['image']),fit: BoxFit.cover)
                          ),
                        ),
                        Positioned(
                            bottom:10,
                            left: 10,
                            child: Text(details[index]['title'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))
                      ],
                    ),
                  ),
                );
              },
              childCount: details.length, // Set the actual count of your data
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 40,),
                Container(
                  height: 35,
                  width: 490,
                  decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.indigo[900]
                  ),
                  child: Text('Explore Now',style: TextStyle(color: Colors.white,fontSize: 17, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}