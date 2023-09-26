import 'package:flutter/material.dart';
import 'package:hero_games/core/component/card.dart';
import '../../core/component/bottom_bar.dart';
import 'package:dots_indicator/dots_indicator.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  PageController pageController = PageController(initialPage: 0);
  var _currPageValue = 0.0;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notification_add_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "Hello, Sara Rose",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "How are you feeling today ?",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildColumn("assets/love.png", "Love"),
                  const SizedBox(
                    width: 35,
                  ),
                  buildColumn("assets/cool.png", "Cool"),
                  const SizedBox(
                    width: 35,
                  ),
                  buildColumn("assets/sad.png", "Sad"),
                  const SizedBox(
                    width: 35,
                  ),
                  buildColumn("assets/happy.png", "Happy"),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Features",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                        onPressed: null,
                        child: Row(
                          children: [
                            Text(
                              "See More",
                              style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 21, 79, 26)),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 21, 79, 26),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 220,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return _buildCardItem(index);
                  },
                ),
              ),
              DotsIndicator(
                dotsCount: 3,
                position: _currPageValue.toInt(),
                decorator: const DotsDecorator(spacing:  EdgeInsets.all(10.0), size: Size.square(5), activeSize: Size.square(5)),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Exercises",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                        onPressed: null,
                        child: Row(
                          children: [
                            Text(
                              "See More",
                              style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 21, 79, 26)),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 21, 79, 26),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200, childAspectRatio: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return buildCard(" Relaxation", Icons.face_2_rounded, const Color.fromARGB(255, 247, 212, 223));
                    } else if (index == 1) {
                      return buildCard(" Meditation", Icons.favorite, const Color.fromARGB(255, 218, 236, 198));
                    } else if (index == 2) {
                      return buildCard(" Breathing", Icons.mood_bad, const Color.fromARGB(255, 174, 222, 213));
                    } else if (index == 3) {
                      return buildCard(" Yoga", Icons.mood, const Color.fromARGB(255, 235, 173, 173));
                    }
                    return const SizedBox.shrink();
                  })
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNavBar(),
    );
  }

  Column buildColumn(String imagePath, String text) {
    return Column(
      children: [
        Image.asset(imagePath, height: 50, width: 50),
        Text(text),
      ],
    );
  }

  Widget buildCard(String title, IconData iconData, Color color) {
    return Card(
      elevation: 2,
      child: Container(
        color: color,
        width: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(iconData), Text(title)],
        ),
      ),
    );
  }

  Widget _buildCardItem(int index) {
    if (index == 0) {
      return const CustomAppCard(
          title: "Positive Vibes",
          subtitle: "Boost your mood with positive vibes",
          timeTitle: " 10 mins",
          imagePath: "assets/yoga_pink.png",
          color: Color.fromARGB(
            255,
            218,
            236,
            198,
          ));
    } else if (index == 1) {
      return const CustomAppCard(
        title: "Positive Vibes",
        subtitle: "Boost your mood with positive vibes",
        timeTitle: " 10 mins",
        imagePath: "assets/yoga_pink.png",
        color: Color.fromARGB(255, 247, 212, 223),
      );
    } else if (index == 2) {
      return const CustomAppCard(
        title: "Positive Vibes",
        subtitle: "Boost your mood with positive vibes",
        timeTitle: " 10 mins",
        imagePath: "assets/yoga_pink.png",
        color: Color.fromARGB(255, 174, 222, 213),
      );
    }
    return const SizedBox.shrink();
  }
}
