import 'package:flutter/material.dart';

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({super.key});

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTabTapped,
      selectedItemColor: const Color.fromARGB(170, 34, 36, 114),
      unselectedItemColor: const Color.fromARGB(255, 141, 150, 153),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '.',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.navigation_outlined),
          label: '.',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.format_align_left),
          label: '.',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: '.',
        )
      ],
    );
  }
}
