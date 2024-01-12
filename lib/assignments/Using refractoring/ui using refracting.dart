import 'package:flutter/material.dart';
import 'custom_refracting.dart';
void main(){
  runApp(MaterialApp(
    home:Grid_with_refractoring_widget() ,
    debugShowCheckedModeBanner: false,
  ));
}
class Grid_with_refractoring_widget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommended for you', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: const Icon(Icons.arrow_circle_left_rounded),
        actions: [const Padding(
          padding: EdgeInsets.all(12.0),
          child: Icon(Icons.settings_input_composite_rounded),
        )],
      ),
      backgroundColor: Colors.black,
      body:
      GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
        children: [

          CUstom_Card(image: const NetworkImage('https://images.unsplash.com/photo-1612931795103-f6a5c4b073ae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTR8fGNvbnZlcnNlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
            price: '150\$',
            rating: 4.5,
            icon: Icons.favorite_border,
            sale: '506 sales',
            click: (){},
            name: 'Trendy Sneakers Shoes For Men ',),
          CUstom_Card(image: const NetworkImage('https://images.unsplash.com/photo-1542496658-e33a6d0d50f6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8V2F0Y2h8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'),
              name:"Men's watch with leather strap ",
              price: '300\$',
              rating: 4,
              icon: Icons.favorite_border,
              sale: '1156 sales',
              click: (){}),
          CUstom_Card(image: const NetworkImage('https://images.unsplash.com/photo-1585218356055-e1bbc5891162?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8V29tZW4lMjBiYWdzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
              name: 'Aesthetic chain strap on a womens bag',
              price: '250\$',
              rating: 3.5,
              icon: Icons.favorite_border,
              sale: '336 sales',
              click: (){}),
          CUstom_Card(image: const NetworkImage('https://images.unsplash.com/photo-1523293182086-7651a899d37f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyZnVtZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'),
              name: 'THE MAN Black perfume Eau de Toilette 50 ml(Men)',
              price: '299\$',
              rating: 4.5,
              icon: Icons.favorite_border,
              sale: '6548 sales',
              click: (){}),
          CUstom_Card(image: const NetworkImage('https://media.istockphoto.com/id/467533204/photo/mans-legs.jpg?s=2048x2048&w=is&k=20&c=4fj0gNv3JvvSThqlezq-PPd8jZKGKF5Tc6J2PgbSrm0='),
              name: "Men's cargo jeans",
              price: '99\$',
              rating: 4,
              icon: Icons.favorite_border,
              sale: '1854 sales',
              click: (){}),
          CUstom_Card(image: const NetworkImage('https://media.istockphoto.com/id/1324164168/photo/short-sleeve-round-neck-t-shirt.jpg?s=2048x2048&w=is&k=20&c=13wdsvwL4K06THB_Gf2M4jBHQWg_PyzR06_27ONmn-c='),
              name: "Men's T shirt blue",
              price: '99\$',
              rating: 3,
              icon: Icons.favorite_border,
              sale: '3685 sales',
              click: (){})

        ],
      ),
    );
  }
}