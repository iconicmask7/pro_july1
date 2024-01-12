import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: GridVieww(),
    debugShowCheckedModeBanner: false,
  ));
}

class GridVieww extends StatelessWidget {
  var names = [

    'Russia',
    'Canada',
    'England',
    'France',
    'Germany',
  ];

  var pics = [
    'assets/images/amz.jpeg',
    'assets/images/amz2.jpg',
    'assets/images/amzzz3.jpeg',
    'assets/images/amzzz4.jpg',
    'assets/images/amzzz5.jpg',
    'assets/images/amzzz6.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Great Outdoorss!!',
          style: GoogleFonts.b612(
            fontSize: 30,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10
        ),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
              margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), // Adjust the borderRadius
                  image: DecorationImage(
                    image: AssetImage(pics[index]),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              // Positioned(
              //   bottom: 00,
              //   top: 20,
              //   child: Text(
              //     names[index],
              //     style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       color: Colors.black,
              //       fontSize: 30,
              //       shadows: [
              //         Shadow(
              //           color: Colors.black26,
              //           offset: Offset(3, 3),
              //           blurRadius: 10,
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }
}

