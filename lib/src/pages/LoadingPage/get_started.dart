import 'package:flutter/material.dart';
import 'choose_mode.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StartPage(),
    title: "Get Started",
  ));
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/BackGround/bgGetStarted.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 37),
                child: Image(image: AssetImage("images/Logo/Spotify.png")),
              ),
              Padding(
                padding: EdgeInsets.only(top: 400),
                child: Text(
                  "Enjoy Listening To Music",
                  style: GoogleFonts.libreBaskerville(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "We've combined the power of the Following feed with the For you feed so there’s one place to discover content on GitHub.There’s improved filtering so you can customize your feed exactly how you like it, and a shiny new visual design. ✨",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.libreBaskerville(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChooseModePage()));
                  },
                  height: 92,
                  minWidth: 325,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Get Started",
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
    ));
  }
}
