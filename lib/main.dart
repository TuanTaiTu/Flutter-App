import 'package:flutter/material.dart';
import 'package:spotify/src/pages/MainPage/main_page.dart';
import 'package:spotify/src/theme/theme.dart';
import 'src/pages/LoadingPage/get_started.dart';
import 'src/pages/LoadingPage/loading_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      debugShowCheckedModeBanner: false,
      theme: AppTheme,
      home: StartPage(),
    );
  }
}
