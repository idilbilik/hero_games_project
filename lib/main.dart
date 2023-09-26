import 'package:flutter/material.dart';
import 'package:hero_games/product/home/home_view.dart';
import 'package:hero_games/product/profile/profile_view.dart';

void main() {
  runApp(const HeroGames());
}

class HeroGames extends StatelessWidget {
  const HeroGames({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfileView(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
