import 'dart:html';

import 'package:flutter/material.dart';
import 'signin_form.dart';

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
          // color: Colors.green,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Image(
                    image: AssetImage('images/Spotify.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 250),
                  child: Text("Choose Mode",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            // Dark Mode
                            Container(
                                height: 70,
                                margin: EdgeInsets.only(left: 50),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 70,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const SigninForm()));
                                          },
                                          child: Icon(Icons.sunny)),
                                    ),
                                  ],
                                )),
                            // Light Mode
                            Container(
                                height: 70,
                                margin: EdgeInsets.only(left: 220),
                                padding: EdgeInsets.symmetric(horizontal: 50),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 70,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const SigninForm()));
                                          },
                                          child: Icon(Icons.sunny)),
                                    ),
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 50),
                        child: Text("Dark Mode"),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 50),
                        child: Text("Light Mode"),
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
                              builder: (context) => const SigninForm()));
                    },
                    child: SizedBox(
                      width: 329,
                      height: 92,
                      child: Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
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
