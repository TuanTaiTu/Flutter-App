import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LyricsPage(),
    title: "Lyrics Page",
  ));
}

class LyricsPage extends StatefulWidget {
  const LyricsPage({super.key});

  @override
  State<LyricsPage> createState() => _LyricsPageState();
}

class _LyricsPageState extends State<LyricsPage> {
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
        body: Center(
          child: Container(
            // Back Ground
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/BackGround/bgBillieEilish2.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Navbar
                Container(
                  height: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 70),
                        child: Text("Bad Guy",
                            style: GoogleFonts.outfit(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25),
                            )),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ))

                      //     ExpansionTile(
                      //   title: Icon(
                      //     Icons.more_horiz,
                      //     color: Colors.white,
                      //   ),
                      //   children: [
                      //     ListTile(title: Text("a")),
                      //     ListTile(title: Text("a")),
                      //     ListTile(title: Text("a")),
                      //   ],
                      // )
                    ],
                  ),
                ),
                // Lyrics
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                              "White shirt now red, my bloody noseSleepin',\nyou're on your tippy toesCreepin' around like no one knows \nThink you're so criminal \nBruises on both my knees \nfor you \nDon't say thank you or please \nI do what I want when I'm wanting toMy soul? \nSo cynical",
                              style: GoogleFonts.outfit(
                                  textStyle: TextStyle(
                                      color: Colors.white38,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17))),
                        ),
                        Container(
                          child: Text(
                            "White shirt now red, my bloody noseSleepin',\nyou're on your tippy toesCreepin' around like no one knows \nThink you're so criminal \nBruises on both my knees \nfor you \nDon't say thank you or please \nI do what I want when I'm wanting toMy soul? \nSo cynical",
                            style: GoogleFonts.outfit(
                                textStyle: TextStyle(
                                    color: Colors.white38,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17)),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        // Bottom Navbar
        bottomNavigationBar: BottomAppBar(
          color: Color(0xFF1C1B1B),
          height: 230,
          child: Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Navbar Line 1
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Track Name
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Image(
                                image: AssetImage(
                                    'images/BillieEilishLyrics.png')),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Bad Guy',
                                    style: GoogleFonts.outfit(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 17)),
                                  ),
                                ),
                                Container(
                                  child: Text('BillieEilish',
                                      style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12))),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: IconButton(
                            onPressed: changeFavIcon,
                            icon: Icon(
                              currentFavIcon,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                ),
                // Navbar Line 2
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
                // Navbar Line 3
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          '$_minute:$_seconds',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        child: Text(
                          '4:20',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
                // Navbar Line 4
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: changeLoopIcon,
                          icon: Icon(currentLoopIcon, color: Colors.white)),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.skip_previous,
                              color: Colors.white,
                            )),
                      ),
                      // Play Icon
                      Container(
                        child: IconButton(
                            onPressed: changePlayIcon,
                            icon: Icon(
                              currentPlayIcon,
                              color: Color(0xFF42C83C),
                              size: 55,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
