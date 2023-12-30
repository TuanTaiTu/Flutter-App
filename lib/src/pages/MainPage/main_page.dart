import 'package:flutter/material.dart';
import 'package:spotify/src/pages/MainPage/HomePage/home_page.dart';
import 'package:spotify/src/pages/MainPage/FavoritePage/favorite_page.dart';
import 'package:spotify/src/pages/MainPage/ProfilePage/profile_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    FavoritePage(),
    ProfilePage(),
  ];

  int currentIndex = 0;

  void onTapNavigatorBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      // Bottom Navbar
      bottomNavigationBar: Container(
        height: 70,
        child: BottomNavigationBar(
            backgroundColor: Color(0xFF343434),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ],
            currentIndex: currentIndex,
            selectedItemColor: Color(0xFF42C83C),
            unselectedItemColor: Colors.grey[400],
            onTap: onTapNavigatorBar),
      ),
    );
  }
}
