import 'package:flutter/material.dart';
import 'package:hero_games/core/component/bottom_bar.dart';
import 'package:hero_games/core/component/card.dart';
import 'package:hero_games/core/component/info_card.dart';
import 'package:hero_games/core/component/tabbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/profile.jpeg"),
                        radius: 40,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Hello, Jade \n\nReady to Workout?",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                  Icon(Icons.notifications_active_outlined),
                ],
              ),
            ),
            InfoCard(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
              child: Column(
                children: [
                  Text(
                    "Workout Programs",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            AppTabbar(),
            CustomAppCard(
              dayTitle: "7 Days",
              title: "Morning Yoga",
              subtitle: "Improve mental focus",
              timeTitle: "10 mins",
              imagePath: "assets/yoga1.png",
            ),
            CustomAppCard(
              dayTitle: "3 Days",
              title: "Plank Exercise",
              subtitle: "Improve posture and stability",
              timeTitle: "5 mins",
              imagePath: "assets/plank.png",
            ),
            CustomAppCard(
              dayTitle: "7 Days",
              title: "Morning Yoga",
              subtitle: "Improve mental focus",
              timeTitle: "10 mins",
              imagePath: "assets/yoga2.png",
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNavBar(),
    );
  }
}
