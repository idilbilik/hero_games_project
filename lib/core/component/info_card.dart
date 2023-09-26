import 'package:flutter/material.dart';

class InfoCard extends StatefulWidget {
  const InfoCard({super.key});

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double containerHeight = screenHeight * 0.1;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: AspectRatio(
        aspectRatio: 5,
        child: Container(
          height: containerHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(79, 221, 225, 234),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildInfoColumn("Heart Rate", "81 BPM"),
              buildVerticalDivider(),
              buildInfoColumn("To Do", "32,5%"),
              buildVerticalDivider(),
              buildInfoColumn("Calo", "1000 Cal"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoColumn(String title, String value) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                buildIconForTitle(title),
                const SizedBox(width: 5),
                Text(
                  title,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
            Text(
              value,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildVerticalDivider() {
    return Container(
      height: 50,
      color: const Color.fromARGB(255, 141, 150, 153),
      width: 1,
    );
  }

  Widget buildIconForTitle(String title) {
    IconData iconData;
    Color? iconColor;
    switch (title) {
      case "Heart Rate":
        iconData = Icons.favorite_border_outlined;
        iconColor = const Color.fromARGB(170, 34, 36, 114);
        break;
      case "To Do":
        iconData = Icons.list_alt_sharp;
        iconColor = const Color.fromARGB(170, 34, 36, 114);
        break;
      case "Calo":
        iconData = Icons.local_fire_department;
        iconColor = const Color.fromARGB(170, 34, 36, 114);
        break;
      default:
        iconData = Icons.info;
    }
    return Icon(
      iconData,
      color: iconColor,
    );
  }
}
