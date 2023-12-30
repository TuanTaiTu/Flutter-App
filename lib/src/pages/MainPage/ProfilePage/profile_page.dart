import 'package:flutter/material.dart';
import 'package:spotify/src/pages/LyricPage/lyric_page.dart';
import 'package:spotify/src/pages/MainPage/HomePage/home_page.dart';
import 'package:spotify/src/pages/MainPage/main_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfilePage(),
    title: "Profile Page",
  ));
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFF1C1B1B),
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Color(0xFF2C2B2B),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              child: Text(
                'Profile',
                style: GoogleFonts.outfit(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: 25,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Profile
          Container(
            height: 240,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              color: Color(0xFF2C2B2B),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Outlook Profile
                Container(
                  child: Column(
                    children: [
                      // Profile Image
                      Container(
                        child: Image(
                            image: AssetImage('images/Profile/imgProfile.png')),
                      ),
                      // Email Text
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'phambaanhtuan2003@gmail.com',
                            style: GoogleFonts.outfit(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.white70),
                          )),
                      // Person Name
                      Container(
                        child: Text(
                          'TuanTaiTu',
                          style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Following
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '420',
                              style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            Text('Following',
                                style: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Colors.white70)),
                          ],
                        ),
                      ),
                      // Follower
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('1337',
                                style: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.white)),
                            Text('Follower',
                                style: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Colors.white70)),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          // Public Playlist Component
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Public Playlist Text
                  Container(
                    padding: EdgeInsets.only(top: 50, left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'PUBLIC PLAYLISTS',
                          style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        // Track 1
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // Img Track 1
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Image(
                                          image: AssetImage(
                                              'images/PublicPlaylist/Dont_Smile_At_Me.png')),
                                    ),
                                  ],
                                ),
                              ),
                              // Name Track 1
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            child: GestureDetector(
                                          onTap: () {},
                                          child: Text(
                                            "Dont' Smile At Me",
                                            style: GoogleFonts.outfit(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Colors.white),
                                          ),
                                        )),
                                        Container(
                                          child: Text("Billie Eilish",
                                              style: GoogleFonts.outfit(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Colors.white70)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // Time Track 1
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("4:20",
                                        style: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                            color: Colors.white70)),
                                  ],
                                ),
                              ),
                              // More Track 1
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.keyboard_control_sharp,
                                            color: Colors.white70)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Track 2
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // Img Track 1
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Image(
                                          image: AssetImage(
                                              'images/PublicPlaylist/As_It_Was.png')),
                                    ),
                                  ],
                                ),
                              ),
                              // Name Track 2
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            child: GestureDetector(
                                          onTap: () {},
                                          child: Text(
                                            "Give Me Da Money",
                                            style: GoogleFonts.outfit(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Colors.white),
                                          ),
                                        )),
                                        Container(
                                          child: Text("Cetral Cee",
                                              style: GoogleFonts.outfit(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Colors.white70)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // Time Track 2
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("4:20",
                                        style: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                            color: Colors.white70)),
                                  ],
                                ),
                              ),
                              // More Track 2
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.keyboard_control_sharp,
                                            color: Colors.white70)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // // Track 3
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // Img Track 3
                              Container(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Image(
                                      image: AssetImage(
                                          'images/PublicPlaylist/Super_Freaky_Girl.png')),
                                ),
                              ),
                              // Name Track 3
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        child: GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        "Super Freaky Girl ",
                                        style: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Colors.white),
                                      ),
                                    )),
                                    Container(
                                      child: Text("Nicki Minaj",
                                          style: GoogleFonts.outfit(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.white70)),
                                    ),
                                  ],
                                ),
                              ),
                              // Time Track 3
                              Container(
                                child: Text("5:11",
                                    style: GoogleFonts.outfit(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Colors.white70)),
                              ),
                              // More Track 3
                              Container(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.keyboard_control_sharp,
                                        color: Colors.white70)),
                              ),
                            ],
                          ),
                        ),
                        // Track 1
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // Img Track 1
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Image(
                                          image: AssetImage(
                                              'images/PublicPlaylist/Bad_Habit.png')),
                                    ),
                                  ],
                                ),
                              ),
                              // Name Track 1
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            child: GestureDetector(
                                          onTap: () {},
                                          child: Text(
                                            "Still Gon Get Rich",
                                            style: GoogleFonts.outfit(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Colors.white),
                                          ),
                                        )),
                                        Container(
                                          child: Text("Midside Hustler",
                                              style: GoogleFonts.outfit(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Colors.white70)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // Time Track 1
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("3:20",
                                        style: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                            color: Colors.white70)),
                                  ],
                                ),
                              ),
                              // More Track 1
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.keyboard_control_sharp,
                                            color: Colors.white70)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Track 1
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // Img Track 1
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Image(
                                          image: AssetImage(
                                              'images/PublicPlaylist/Sweetest_Pie.png')),
                                    ),
                                  ],
                                ),
                              ),
                              // Name Track 1
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            child: GestureDetector(
                                          onTap: () {},
                                          child: Text(
                                            "Don Julio Tokio     ",
                                            style: GoogleFonts.outfit(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Colors.white),
                                          ),
                                        )),
                                        Container(
                                          child: Text("Hustlang Robber",
                                              style: GoogleFonts.outfit(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Colors.white70)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // Time Track 1
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("4:37",
                                        style: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                            color: Colors.white70)),
                                  ],
                                ),
                              ),
                              // More Track 1
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.keyboard_control_sharp,
                                            color: Colors.white70)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
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
