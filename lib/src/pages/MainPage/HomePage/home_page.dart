import 'package:flutter/material.dart';
import 'package:spotify/src/pages/LyricPage/lyric_page.dart';
import 'package:spotify/src/pages/LyricPage/music_page.dart';
import 'package:spotify/src/pages/MainPage/ProfilePage/profile_page.dart';
import 'package:spotify/src/pages/RegisterOrSigninPage/signin_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    title: "Home Page",
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  IconData currentIcon4 = Icons.favorite_border;
  void changeIcon4() {
    setState(() {
      currentIcon4 = currentIcon4 == Icons.favorite_border
          ? Icons.favorite
          : Icons.favorite_border;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xFF1C1B1B),
            appBar: AppBar(
              toolbarHeight: 90,
              backgroundColor: Color(0xFF1C1B1B),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      // child: GestureDetector(
                      //   onTap: () {
                      //     Navigator.pop(context);
                      //   },
                      //   child: Icon(
                      //     Icons.arrow_back_ios,
                      //   ),
                      // ),
                      ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    margin: EdgeInsets.only(top: 20),
                    height: 45,
                    child: Image(image: AssetImage('images/Logo/Spotify.png')),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  // Scroll Row
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "News",
                              style: GoogleFonts.outfit(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16)),
                            ),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Video",
                              style: GoogleFonts.outfit(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16)),
                            ),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Artist",
                              style: GoogleFonts.outfit(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16)),
                            ),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Podcast",
                              style: GoogleFonts.outfit(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Scroll Row 2
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // Card 1
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage(
                                      'images/Card/BillieEilish1.png'),
                                ),
                                // Text
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MusicPage()));
                                        },
                                        child: Text(
                                          "Bad Guys",
                                          style: GoogleFonts.outfit(
                                              textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16)),
                                        ),
                                      ),
                                      Text(
                                        "Billie Eilish",
                                        style: GoogleFonts.outfit(
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          // Card 2
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage('images/Card/Drake.png'),
                                ),
                                // Text
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Fair Trade",
                                        style: GoogleFonts.outfit(
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16)),
                                      ),
                                      Text(
                                        "Drake",
                                        style: GoogleFonts.outfit(
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),

                          SizedBox(
                            width: 30,
                          ),
                          // Card 3
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage(
                                      'images/Card/BillieEilish1.png'),
                                ),
                                // Text
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 13),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "20 Minute",
                                        style: GoogleFonts.outfit(
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16)),
                                      ),
                                      Text(
                                        "Lil Uzi Vert",
                                        style: GoogleFonts.outfit(
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12)),
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
                  ),
                  // Component 2
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 30),
                                child: Text(
                                  "Playlist",
                                  style: GoogleFonts.outfit(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 30),
                                child: Text(
                                  "See More",
                                  style: GoogleFonts.outfit(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        )
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
                                        image: AssetImage(
                                            'images/Icon/elipse2.png')),
                                  ),
                                  Container(
                                    height: 35,
                                    child: Image(
                                        image:
                                            AssetImage('images/Icon/play.png')),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 70)),
                                  Container(
                                    child: Text(
                                      "Call Me",
                                      style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16)),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Wren Evan",
                                      style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12)),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                child: Text(
                                  "4:37",
                                  style: GoogleFonts.outfit(
                                      textStyle: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ),
                              ),
                              IconButton(
                                  onPressed: changeIcon1,
                                  icon: Icon(
                                    currentIcon1,
                                    color: Colors.white,
                                  ))
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
                                        image: AssetImage(
                                            'images/Icon/elipse2.png')),
                                  ),
                                  Container(
                                    height: 35,
                                    child: Image(
                                        image:
                                            AssetImage('images/Icon/play.png')),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 70)),
                                  Container(
                                    child: Text(
                                      "Forest Gump",
                                      style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16)),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Hustlang Robber",
                                      style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12)),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                child: Text(
                                  "4:20",
                                  style: GoogleFonts.outfit(
                                      textStyle: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      currentIcon2 =
                                          currentIcon2 == Icons.favorite_border
                                              ? Icons.favorite
                                              : Icons.favorite_border;
                                    });
                                  },
                                  icon: Icon(
                                    currentIcon2,
                                    color: Colors.white,
                                  ))
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
                                        image: AssetImage(
                                            'images/Icon/elipse2.png')),
                                  ),
                                  Container(
                                    height: 35,
                                    child: Image(
                                        image:
                                            AssetImage('images/Icon/play.png')),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 70)),
                                  Container(
                                    child: Text(
                                      "Middle Child",
                                      style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16)),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "J Cole",
                                      style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12)),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                child: Text(
                                  "4:33",
                                  style: GoogleFonts.outfit(
                                      textStyle: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ),
                              ),
                              IconButton(
                                  onPressed: changeIcon3,
                                  icon: Icon(
                                    currentIcon3,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                        // Track 4
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    child: Image(
                                        image: AssetImage(
                                            'images/Icon/elipse2.png')),
                                  ),
                                  Container(
                                    height: 35,
                                    child: Image(
                                        image:
                                            AssetImage('images/Icon/play.png')),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 70)),
                                  Container(
                                    child: Text(
                                      "A Lot",
                                      style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16)),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "21 Savage x J Cole",
                                      style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12)),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                child: Text(
                                  "4:21",
                                  style: GoogleFonts.outfit(
                                      textStyle: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ),
                              ),
                              IconButton(
                                  onPressed: changeIcon4,
                                  icon: Icon(
                                    currentIcon4,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                        // Track 4
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    child: Image(
                                        image: AssetImage(
                                            'images/Icon/elipse2.png')),
                                  ),
                                  Container(
                                    height: 35,
                                    child: Image(
                                        image:
                                            AssetImage('images/Icon/play.png')),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 70)),
                                  Container(
                                    child: Text(
                                      "Riot",
                                      style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16)),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Asap Rocky",
                                      style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12)),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                child: Text(
                                  "3:18",
                                  style: GoogleFonts.outfit(
                                      textStyle: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ),
                              ),
                              IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                        // Track 6
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    child: Image(
                                        image: AssetImage(
                                            'images/Icon/elipse2.png')),
                                  ),
                                  Container(
                                    height: 35,
                                    child: Image(
                                        image:
                                            AssetImage('images/Icon/play.png')),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 70)),
                                  Container(
                                    child: Text(
                                      "Kill Bill",
                                      style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16)),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "SZA",
                                      style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12)),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                child: Text(
                                  "3:52",
                                  style: GoogleFonts.outfit(
                                      textStyle: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ),
                              ),
                              IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    child: Image(
                                        image: AssetImage(
                                            'images/Icon/elipse2.png')),
                                  ),
                                  Container(
                                    height: 35,
                                    child: Image(
                                        image:
                                            AssetImage('images/Icon/play.png')),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 70)),
                                  Container(
                                    child: Text(
                                      "Open Arms",
                                      style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16)),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "SZA",
                                      style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12)),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                child: Text(
                                  "3:52",
                                  style: GoogleFonts.outfit(
                                      textStyle: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15)),
                                ),
                              ),
                              IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
