import 'package:flutter/material.dart';

class Ref_widget extends StatelessWidget {
  NetworkImage? image;
  String? name;
  String? price;
  String? qty;
  ElevatedButton? elevatedButton;
  // String? add;
  VoidCallback? click;

  Ref_widget({
    required this.image,
    required this.name,
    required this.price,
    required this.qty,
    required this.elevatedButton,
    // required this.add,
    required this.click

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: image!),
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(name!,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              )),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(price!,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
              )),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0,bottom: 10),
                child: Text(qty!),
              ),
              SizedBox(width: 90,),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: ElevatedButton( onPressed: (){}, child: Text('ADD', style: TextStyle(fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
              )
            ],
          ),

        ],
      ),
    );
  }
}