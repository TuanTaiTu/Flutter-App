import 'package:flutter/material.dart';
import 'package:spotify/src/pages/RegisterOrSigninPage/register_page.dart';
// import 'register.dart';
import 'signin_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ForumSpotify(),
    title: "Register or Sign in",
    color: Color(0x1c1b1b),
  ));
}

class ForumSpotify extends StatefulWidget {
  const ForumSpotify({super.key});

  @override
  State<ForumSpotify> createState() => _ForumSporityState();
}

class _ForumSporityState extends State<ForumSpotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1B1B),
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 24, color: Colors.white70),
        ),
        backgroundColor: Color(0x1c1b1b),
      ),
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/BackGround/bgBillieEilish1.png"),
                  fit: BoxFit.cover,
                ),
                color: Color(0x1c1b1b)),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 100),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                Image.asset(
                  "images/Logo/Spotify.png",
                  height: 70,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 80),
                Column(
                  children: <Widget>[
                    Text(
                      "Enjoy Listening To Music",
                      style: GoogleFonts.libreBaskerville(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      "Spotify is a proprietary Swedish audio \nsteaming and media services provider",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.libreBaskerville(
                          color: Colors.white60,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 150),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    MaterialButton(
                      minWidth: 147,
                      height: 73,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()));
                      },
                      color: Color.fromARGB(255, 67, 200, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        "Register",
                        style: GoogleFonts.libreBaskerville(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(20)),
                    MaterialButton(
                      minWidth: 147,
                      height: 73,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SigninPage()));
                      },
                      // defining the shape
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.libreBaskerville(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
