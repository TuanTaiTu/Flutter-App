import 'package:flutter/material.dart';
import 'package:spotify/src/pages/LyricPage/lyric_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MusicPage(),
    title: "Music Page",
  ));
}

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  double _minute = 0;
  double _seconds = 0;
  void _updateValue() {
    setState(() {
      if (_seconds == 60) {
        setState(() {
          _minute += 1;
          _seconds = 0;
        });
      } else {
        _seconds = _seconds + 1;
      }
    });
  }

  IconData currentFavIcon = Icons.favorite_border;
  void changeFavIcon() {
    setState(() {
      currentFavIcon = currentFavIcon == Icons.favorite_border
          ? Icons.favorite
          : Icons.favorite_border;
    });
  }

  IconData currentPlayIcon = Icons.play_circle_fill_outlined;
  void changePlayIcon() {
    setState(() {
      currentPlayIcon = currentPlayIcon == Icons.pause_circle_filled
          ? Icons.play_circle_filled_outlined
          : Icons.pause_circle_filled;
    });
  }

  IconData currentLoopIcon = Icons.repeat;
  void changeLoopIcon() {
    setState(() {
      currentLoopIcon =
          currentLoopIcon == Icons.repeat_one ? Icons.repeat : Icons.repeat_one;
    });
  }

  Color currentColorIcon = Colors.white;
  void changeColorIcon() {
    setState(() {
      currentColorIcon =
          currentColorIcon == Colors.green ? Colors.white : Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 34, 34, 34),
        // Navbar
        appBar: AppBar(
          toolbarHeight: 100,
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 34, 34, 34),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert, size: 24, color: Colors.white),
              padding: EdgeInsets.symmetric(horizontal: 30),
            ),
          ],
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: IconButton(
              icon: const Icon(Icons.arrow_back_ios,
                  size: 24, color: Colors.white),
              padding: EdgeInsets.symmetric(horizontal: 30),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          title: Text(
            "Now Playing",
            style: GoogleFonts.outfit(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20)),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                // Card
                SizedBox(
                    child: Image.asset(
                  "images/MusicPage/card1.png",
                  height: 400,
                  width: 335,
                  fit: BoxFit.cover,
                )),
                SizedBox(height: 18),
                // Name Track
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bad Guy",
                            style: GoogleFonts.outfit(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20)),
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
                      SizedBox(width: 200),
                      Container(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: changeFavIcon,
                              child: Icon(
                                currentFavIcon,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 330,
                      child: Slider(
                        thumbColor: Colors.green,
                        activeColor: Colors.green,
                        value: _seconds,
                        min: 0.0,
                        max: 60,
                        divisions: 10,
                        label: 'Time: $_minute:$_seconds',
                        onChanged: (value) {
                          _updateValue();
                        },
                      ),
                    ),
                  ],
                ),
                // Time Track
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(children: [
                        Text(
                          "$_minute:$_seconds",
                          style: GoogleFonts.outfit(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12)),
                        ),
                      ]),
                    ),
                    // SizedBox(
                    //   width: 170,
                    //   height: 40,
                    // ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text("4:02",
                          style: GoogleFonts.outfit(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12))),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                // Navbar Line 4
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: changeLoopIcon,
                          icon: Icon(
                            currentLoopIcon,
                            color: Colors.white,
                          )),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.skip_previous,
                              color: Colors.white,
                            )),
                      ),
                      Container(
                        child: IconButton(
                            onPressed: changePlayIcon,
                            icon: Icon(
                              currentPlayIcon,
                              color: Color(0xFF42C83C),
                              size: 49,
                            )),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.skip_next, color: Colors.white)),
                      ),
                      IconButton(
                          onPressed: changeColorIcon,
                          icon: Icon(
                            Icons.shuffle,
                            color: currentColorIcon,
                          )),
                    ],
                  ),
                ),

                // Lyrics
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LyricsPage()));
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.white60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "Lyrics",
                        style: GoogleFonts.outfit(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 15)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
