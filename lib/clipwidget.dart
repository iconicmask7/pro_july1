import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


void main(){
  runApp(MaterialApp(home: ClipWidget()));
}



class ClipWidget extends StatelessWidget {
  const ClipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            ///cliprect
            ClipRect(
              child: Container(
                child: Align(
                  widthFactor: .4,
                  heightFactor: .4,
                  alignment: Alignment.center,
                  child: Image.network("https://images.unsplash.com/photo-1692317799558-ee4ce64d3c9b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"),
                ),
              ),
            ),
            SizedBox(height:20),

            ClipRRect(
              borderRadius: BorderRadius.circular(200.0),
              child: Container(
                child: Image.network(""),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ClipPath(
              clipper: StarClipper(8),
              child: Container(
                height: 450,
                color: Colors.indigo,
                child: Center(child: Text("Starlipper()")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
