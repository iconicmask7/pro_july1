import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(const MaterialApp(
    home: Now_playing(),
    debugShowCheckedModeBanner: false,
  ));
}

class Now_playing extends StatefulWidget {
  const Now_playing({super.key});

  @override
  State<Now_playing> createState() => _Now_playingState();
}

class _Now_playingState extends State<Now_playing> {
  double slidervalue=0.2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Now playing',style: GoogleFonts.montserrat(color: Colors.pink[100],fontWeight: FontWeight.bold,fontSize: 30),),
        centerTitle: true,
        leading: Icon(Icons.keyboard_arrow_down,color: Colors.pink[100],),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 280,
              width: 250,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(image: NetworkImage("data:image/jpeg;base64,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"),
                      fit: BoxFit.cover)
              ),
            ),
            const SizedBox(height: 50,),
            Text('FRIENDS',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,color: Colors.pink[100],fontSize: 25),),
            const SizedBox(height: 20,),
            const Text('Anne-Marie and Marshmello',style: TextStyle(color: Colors.white),),
            const SizedBox(height: 20,),
            Container(
              width: 400,
              child: Slider(

                activeColor: Colors.pink[100],
                inactiveColor: Colors.white,
                value: slidervalue,
                min: 0.0,
                max: 0.5, // Assuming 1.0 represents the full duration
                onChanged: (double value) {
                  // Handle progress change
                  setState(() {
                    slidervalue = value;
                  });
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 60,right: 60),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('01:24',style: TextStyle(color: Colors.white),),
                  Text('03:13',style: TextStyle(color: Colors.white),)
                ],),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 80.0),
                  child: Column(
                    children: [
                      Icon(Icons.download,color: Colors.white),
                      SizedBox(height: 10,),
                      Icon(Icons.volume_mute,color: Colors.white,)
                    ],
                  ),
                ),
                const Icon(Icons.shuffle_rounded,color: Colors.white,size: 20,),
                const SizedBox(width: 10,),
                const Icon(Icons.skip_previous,size: 50,color: Colors.grey,),
                Icon(Icons.play_circle_sharp,color: Colors.pink[100],size: 60,),
                const Icon(Icons.skip_next,size: 50,color: Colors.grey,),
                const SizedBox(width: 10,),
                const Icon(Icons.loop,color: Colors.white,size: 20,),
                const Padding(
                  padding: EdgeInsets.only(left: 80.0),
                  child: Column(
                    children: [
                      Icon(Icons.star_border_outlined, color: Colors.white,),
                      SizedBox(height: 10,),
                      Icon(Icons.queue_music_outlined,color: Colors.white,)
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Playlist",style: GoogleFonts.montserrat(fontSize: 12,color: Colors.pink[100]),),
                const Text(" | ",style: TextStyle(color: Colors.white,fontSize: 16),),
                Text('Lyrics',style: GoogleFonts.montserrat(fontSize: 12,color: Colors.pink[100]),)
              ],
            ),
            const SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}