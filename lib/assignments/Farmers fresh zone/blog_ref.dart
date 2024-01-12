import 'package:flutter/material.dart';

class Blog_Wiget extends StatelessWidget {
  NetworkImage? image;
  String? title;
  String? postedon;
  IconData? icon;
  VoidCallback? click;

  Blog_Wiget({
    required this.image,
    required this.title,
    required this.postedon,
    required this.icon,
    required this.click
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child:
      Container(
        height: 250,
        width: 250,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: image!),
            ),
            Text(title!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(postedon!,style: TextStyle(fontSize: 13,color: Colors.grey[850]),),
                ),
                SizedBox(height: 60,),
                SizedBox(width: 140,),
                Icon(icon!,color: Colors.green,size: 25,)
              ],
            ),

          ],
        ),
      ),
    );
  }
}