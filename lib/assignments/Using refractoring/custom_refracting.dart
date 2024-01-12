import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:google_fonts/google_fonts.dart';

class CUstom_Card extends StatelessWidget {
  NetworkImage? image;
  String? name;
  String? price;
  double? rating;
  IconData? icon;
  String? sale;
  VoidCallback? click;

  CUstom_Card({
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
    required this.icon,
    required this.sale,
    required this.click
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: click!,
      child: Card(
        color: Colors.grey[850],
        child: Column(
          children: [
            Stack(children: [
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ClipRRect(borderRadius: BorderRadius.circular(20),
                      child: Image(image: image!,)
                  )
              )],),
            Text(name!, style: GoogleFonts.tiltNeon(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
            Text(price!, style: GoogleFonts.tiltNeon(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.blue),),
            RatingBar.builder(
              initialRating: rating!,
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
            Padding(
              padding: const EdgeInsets.only(left: 160,),
              child: Column(
                children: [
                  Icon(icon!,color: Colors.white,size: 10,),
                  Text(sale!,style: TextStyle(color: Colors.white,fontSize: 10),)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}