import 'dart:html';

import 'package:flutter/material.dart';
import 'package:spotify/src/pages/RegisterOrSigninPage/register_or_signin_page.dart';
import '../RegisterOrSigninPage/signin_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ChooseModePage(),
    title: "Choose Mode",
  ));
}

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/BackGround/bgChooseMode.png'),
              fit: BoxFit.cover,
            ),
          ),

          // color: Colors.green,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Image(
                    image: AssetImage('images/Logo/Spotify.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 370),
                  child: Text(
                    "Choose Mode",
                    style: GoogleFonts.libreBaskerville(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Dark Mode
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Stack(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset('images/Icon/elipse1.png'),
                            ),
                            Container(
                              height: 70,
                              width: 70,
                              child: GestureDetector(
                                onTap: () {},
                                child: Image.asset('images/Icon/Moon.png'),
                              ),
                            )
                          ],
                        ),
                      ),

                      // Dark Mode
                      Padding(
                        padding: EdgeInsets.only(right: 50),
                        child: Stack(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset('images/Icon/elipse1.png'),
                            ),
                            Container(
                              height: 70,
                              width: 70,
                              child: GestureDetector(
                                onTap: () {},
                                child: Image.asset('images/Icon/Sun.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 50),
                        child: Text(
                          "Dark Mode",
                          style: GoogleFonts.libreBaskerville(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 50),
                        child: Text(
                          "Light Mode",
                          style: GoogleFonts.libreBaskerville(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                // Continue Button
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForumSpotify()));
                    },
                    height: 92,
                    minWidth: 325,
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Continue",
                      style: GoogleFonts.libreBaskerville(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
