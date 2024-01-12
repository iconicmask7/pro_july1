import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: GridUi(),));
}
class GridUi extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
        ),
        itemCount: 12, // Number of grid items
        itemBuilder: (context, index) {
          // Define colors and icons for each grid item
          List<Color> colors = [Colors.blue, Colors.yellow,
            Colors.green, Colors.pink,
            Colors.orange,Colors.deepPurpleAccent,
            Colors.teal,Colors.black38,Colors.yellow,
            Colors.deepOrange,Colors.greenAccent,Colors.brown];
          List<IconData> icons = [ Icons.home,
            Icons.home,
            Icons.camera,
            Icons.star, Icons.wifi_1_bar_outlined,
            Icons.bookmark,Icons.phone, Icons.message,
            Icons.newspaper,
            Icons.sim_card, Icons.mic_off_rounded,
            Icons.pageview_outlined];
          return Container(
            constraints: BoxConstraints(
                minWidth: 30.0,minHeight: 10.0,
                maxWidth: 50.0,maxHeight: 30.0
            ),margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: colors[index],
              borderRadius: BorderRadius.circular(30.0),
            ),

            child: Row(
              children: [
                Icon(
                  icons[index],
                  size: 80.0,
                  color: Colors.black38,
                ),
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Heart',style: TextStyle(color:Colors.black38,fontSize: 25)),


                      Text('Shaker',style: TextStyle(color:Colors.black38,fontSize: 25)),

                    ],),
                ),
              ],),
          );
        },
      ),
    );
  }
}



