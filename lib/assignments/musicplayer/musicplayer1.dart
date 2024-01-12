import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Music(),
  ));
}

class Music extends StatefulWidget {
  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  var playlist = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-avfeINASGq2kkIJIUeTzwU_4W2KI6cMOPw&usqp=CAU" ,
    "https://i.scdn.co/image/ab67706c0000da84cd9bd13f71d8b16277e1092a",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaZP-e6i80-B_iwlXcPV3M-Z_IYG05027xRQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8FbE7IcH5s2hA7D7VoagDAqMpeNNhUkLuHQ&usqp=CAU",
    "data:image/jpeg;base64,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",
    "data:image/jpeg;base64,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",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1R3OjGJPQgx_BLCbmQ-nOTgUH1KnVMyNgUw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_1K9x_QzEEMqiJ19utiLoknUgLZoH6iL5RmmLanm_bAK_GCEBqud-2n_DZTo8fhlfIJ8&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkbl3E3VRrHAZdfdM9eGd2JOcmgTn3-o4QTw&usqp=CAU",
    "https://i.scdn.co/image/ab67706c0000da84ef921b204388156db322d4df",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            pinned: true,
            floating: true,
            title: Text(
              'Playlists',
              style: GoogleFonts.montserrat(
                  color: Colors.pink[100],
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            bottom: AppBar(
              backgroundColor: Colors.black,
              title: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.black),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[900],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                    hintText: 'Search....',
                    hintStyle: GoogleFonts.montserrat(color: Colors.pink[100]),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.pink[100],
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => StaggeredGrid.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: List.generate(
                      10,
                          (index) => StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(45),
                                  child: Image.network(playlist[index])),

                            ),
                          )))),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: currentIndex,
          onTap: (i) => setState(() => currentIndex = i),
          items: [
            SalomonBottomBarItem(
                icon: Icon(Icons.home,color: Colors.white,),
                title: Text('Home'),
                selectedColor: Colors.pink[100]),
            SalomonBottomBarItem(
                icon: Icon(Icons.search,color: Colors.white,),
                title: Text('Search'),
                selectedColor: Colors.pink[100]),
            SalomonBottomBarItem(
                icon: Icon(Icons.play_circle_sharp,color: Colors.white,),
                title: Text('Playlist'),
                selectedColor: Colors.pink[100]),
            SalomonBottomBarItem(
                icon: Icon(Icons.more_horiz,color: Colors.white,),
                title: Text('Menu'),
                selectedColor: Colors.pink[100])
          ]),
    );
  }
}
