import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Loading(),
    title: "Spotify",
  ));
}

class Loading extends StatelessWidget {
  const Loading({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color(0xFF1C1B1B),
            child: const Image(image: AssetImage('images/Logo/Spotify.png')),
          )
        ],
      ),
    ));
  }
}
