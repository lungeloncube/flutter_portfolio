import 'package:flutter/material.dart';
import 'package:myapp/projects.dart';

import 'about.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigation> createState() => CustomBottomNavigationState();
}


class CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    const About(),
    const Projects(),
    const Projects(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'About',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chrome_reader_mode),
          label: 'Blog',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mobile_screen_share),
          label: 'Projects',
        )
      ],
      currentIndex: _selectedIndex,
      onTap: (index) => setState(() => _selectedIndex = index),
      selectedItemColor: Theme.of(context).accentColor,
    );
  }
}
