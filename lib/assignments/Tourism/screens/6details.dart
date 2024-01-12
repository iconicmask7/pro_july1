
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../data/dummydata.dart';


class Tour_details extends StatelessWidget {
  const Tour_details({super.key});

  @override
  Widget build(BuildContext context) {
    var id=ModalRoute.of(context)?.settings.arguments;
    var detail= details.firstWhere((detail) => detail['Id']==id);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              child: ListTile(
                title: Text(detail['details title'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                trailing: Image(image: NetworkImage(detail['image'])),

                subtitle:  Row(
                  children: [
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15,
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                      unratedColor: Colors.white,
                    ),
                    Text('ratings')
                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            Container(
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('About places', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ),
                subtitle: Text(detail['description']),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Special facilities',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40),
                  child: Row(
                    children: [Icon(Icons.car_repair,color: Colors.blue,),
                      Text('Parking',style: TextStyle(color: Colors.blue),),
                      SizedBox(width: 80,),
                      Icon(Icons.timer_rounded,color: Colors.blue,),
                      Text('24 hr service',style: TextStyle(color: Colors.blue),),
                      SizedBox(width: 80,),
                      Icon(Icons.wifi_rounded,color: Colors.blue,),
                      Text('Free Wifi',style: TextStyle(color: Colors.blue)
                      )],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 600,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: NetworkImage(detail['description image']),fit: BoxFit.cover)
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Special Facilities',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ),
                Row(
                  children: List.generate(4, (index) => Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 17,right: 17,top: 10),
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black),
                            color: Colors.grey[300]
                        ),
                        child: Column(
                          children: [
                            Text('Adult'),
                            Text('02')
                          ],
                        ),
                      ),
                    ),
                  )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: ()=>Navigator.of(context).pushNamed('explore'),
                child: Container(
                  height: 40,
                  width: 450,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                  ),
                  child: Text('Explore now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.center,),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}