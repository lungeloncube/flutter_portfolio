import 'package:flutter/material.dart';
import 'package:myapp/about.dart';
import 'package:myapp/home.dart';
import 'package:myapp/projects.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
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
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: tabWidgets.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
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
        ),
      ),
    );
  }
}
