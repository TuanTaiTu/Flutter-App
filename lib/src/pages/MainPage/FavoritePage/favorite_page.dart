import 'package:flutter/material.dart';
import 'package:spotify/src/pages/LyricPage/lyric_page.dart';
import 'package:spotify/src/pages/MainPage/HomePage/home_page.dart';
import 'package:spotify/src/pages/MainPage/main_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FavoritePage(),
    title: "Favorite Page",
  ));
}

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  IconData currentIcon1 = Icons.favorite_border;
  void changeIcon1() {
    setState(() {
      currentIcon1 = currentIcon1 == Icons.favorite_border
          ? Icons.favorite
          : Icons.favorite_border;
    });
  }

  IconData currentIcon2 = Icons.favorite_border;
  void changeIcon2() {
    setState(() {
      currentIcon2 = currentIcon2 == Icons.favorite_border
          ? Icons.favorite
          : Icons.favorite_border;
    });
  }

  IconData currentIcon3 = Icons.favorite_border;
  void changeIcon3() {
    setState(() {
      currentIcon3 = currentIcon3 == Icons.favorite_border
          ? Icons.favorite
          : Icons.favorite_border;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFF1C1B1B),
      // Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   child: Column(
            //     children: [
            //       CircularProgressIndicator(),
            //       SizedBox(height: 10),
            //       Text("Loading"),
            //     ],
            //   ),
            // ),
            // Big Slide
            Container(
              child: Stack(
                children: [
                  // Slide
                  Container(
                    child: Image(
                        image: AssetImage(
                            'images/FavoritePage/BillieEilish1.png')),
                  ),
                  // Navbar
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Button Back
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => HomePage()));
                                  },
                                  child: Image(
                                      image: AssetImage(
                                          'images/Icon/elipse2.png')),
                                ),
                              ),
                              Container(
                                  height: 36,
                                  width: 42,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MainPage()));
                                    },
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        // Icon More
                        Container(
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Name Artist
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text("Billie Eilish",
                  style: GoogleFonts.outfit(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20))),
            ),
            // Album Track
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text("2 Album, 69 Tracks",
                  style: GoogleFonts.outfit(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 13))),
            ),
            // Description
            Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nTurpis adipiscing vestibulum orci enim,\n nascetur vitae ",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.outfit(
                            textStyle: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.w400,
                                fontSize: 13))),
                  ],
                )),
            // Text Album
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Albums",
                        style: GoogleFonts.outfit(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20))),
                  )
                ],
              ),
            ),
            // Scroll View Row
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // Card 1
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(children: [
                          // Img Card 1
                          Container(
                            child: GestureDetector(
                              onTap: () {},
                              child: Image(
                                  image: AssetImage(
                                      'images/FavoritePage/card1.png')),
                            ),
                          ),
                          // Name Track 1
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: GestureDetector(
                              child: Text('Lilbubblegum',
                                  style: GoogleFonts.outfit(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13))),
                            ),
                          )
                        ]),
                      ),
                      // Card 2
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(children: [
                          // Img Card 2
                          Container(
                            child: GestureDetector(
                              onTap: () {},
                              child: Image(
                                  image: AssetImage(
                                      'images/FavoritePage/card2.png')),
                            ),
                          ),
                          // Name Track 2
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: GestureDetector(
                              child: Text('Happier Than Ever',
                                  style: GoogleFonts.outfit(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13))),
                            ),
                          )
                        ]),
                      ),
                      // Card 3
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(children: [
                          // Img Card 3
                          Container(
                            child: GestureDetector(
                              onTap: () {},
                              child: Image(
                                  image: AssetImage(
                                      'images/FavoritePage/card1.png')),
                            ),
                          ),
                          // Name Track 3
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: GestureDetector(
                              child: Text('A Lot',
                                  style: GoogleFonts.outfit(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13))),
                            ),
                          )
                        ]),
                      ),
                    ],
                  )),
            ),
            // Text Songs
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Favorite Songs',
                      style: GoogleFonts.outfit(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20))),
                ],
              ),
            ),
            // Playlist
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Track 1
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          children: [
                            Container(
                              child: Image(
                                  image: AssetImage('images/Icon/elipse2.png')),
                            ),
                            Container(
                              height: 35,
                              child: Image(
                                  image: AssetImage('images/Icon/play.png')),
                            ),
                          ],
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 70)),
                            Container(
                              child: Text("Chuyen Rang",
                                  style: GoogleFonts.outfit(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16))),
                            ),
                            Container(
                              child: Text("Thinh Suy",
                                  style: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.white70)),
                            ),
                          ],
                        ),
                        Container(
                          child: Text(
                            "3:24",
                            style: GoogleFonts.outfit(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.white70),
                          ),
                        ),
                        IconButton(
                          onPressed: changeIcon1,
                          icon: Icon(
                            currentIcon1,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  // Track 2
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          children: [
                            Container(
                              child: Image(
                                  image: AssetImage('images/Icon/elipse2.png')),
                            ),
                            Container(
                              height: 35,
                              child: Image(
                                  image: AssetImage('images/Icon/play.png')),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 70)),
                            Container(
                              child: Text(
                                "Forest Gump",
                                style: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              child: Text("Hustlang Robber",
                                  style: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.white70)),
                            ),
                          ],
                        ),
                        Container(
                          child: Text(
                            "4:20",
                            style: GoogleFonts.outfit(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.white70),
                          ),
                        ),
                        IconButton(
                          onPressed: changeIcon2,
                          icon: Icon(
                            currentIcon2,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  // Track 3
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          children: [
                            Container(
                              child: Image(
                                  image: AssetImage('images/Icon/elipse2.png')),
                            ),
                            Container(
                              height: 35,
                              child: Image(
                                  image: AssetImage('images/Icon/play.png')),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 70)),
                            Container(
                              child: Text(
                                "Middle Child",
                                style: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              child: Text("J Cole",
                                  style: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.white70)),
                            ),
                          ],
                        ),
                        Container(
                          child: Text(
                            "4:33",
                            style: GoogleFonts.outfit(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.white70),
                          ),
                        ),
                        IconButton(
                          onPressed: changeIcon3,
                          icon: Icon(
                            currentIcon3,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom Navbar
      // bottomNavigationBar: BottomAppBar(
      //   color: Color(0xFF343434),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       Container(
      //         child: GestureDetector(
      //           onTap: () {},
      //           child: Image(
      //             image: AssetImage('images/Icon/home.png'),
      //           ),
      //         ),
      //       ),
      //       Container(
      //         child: GestureDetector(
      //           onTap: () {},
      //           child: Image(
      //             image: AssetImage('images/Icon/discovery.png'),
      //           ),
      //         ),
      //       ),
      //       Container(
      //         child: GestureDetector(
      //           onTap: () {},
      //           child: Image(
      //             image: AssetImage('images/Icon/favorite.png'),
      //           ),
      //         ),
      //       ),
      //       Container(
      //         child: GestureDetector(
      //           onTap: () {},
      //           child: Image(
      //             image: AssetImage('images/Icon/person.png'),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    ));
  }
}
