import 'package:flutter/material.dart';
import 'package:myapp/about.dart';
import 'package:myapp/home.dart';
import 'package:myapp/projects.dart';
import 'package:myapp/theme_model.dart';

class MobileHome extends StatefulWidget {
  final dynamic mode;
  final dynamic notifier;
  const MobileHome({Key? key, this.mode, this.notifier}) : super(key: key);

  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    const About(),
    // const Projects(),
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                IconButton(
                    onPressed: () => widget.notifier.value = ThemeModel(
                        widget.mode == ThemeMode.light
                            ? ThemeMode.dark
                            : ThemeMode.light),
                    icon: Icon(widget.mode == ThemeMode.light
                        ? Icons.dark_mode
                        : Icons.light_mode))
              ]),
              Center(
                child: tabWidgets.elementAt(_selectedIndex),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'About',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.chrome_reader_mode),
            //   label: 'Blog',
            // ),
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
