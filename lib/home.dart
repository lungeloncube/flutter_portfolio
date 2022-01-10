// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/mobile_home.dart';
import 'package:myapp/projects.dart';
import 'package:myapp/theme_model.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  final dynamic mode;
  final dynamic notifier;
  const HomePage({Key? key, this.mode, this.notifier}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1000) {
          return const MobileHome();
        } else {
          return Scaffold(
              drawer: Drawer(
                child: ListView(padding: EdgeInsets.zero, children: const [
                  DrawerHeader(child: Text("Header")),
                  ListTile(title: Text("Home"))
                ]),
              ),
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () => widget.notifier.value =
                                  ThemeModel(widget.mode == ThemeMode.light
                                      ? ThemeMode.dark
                                      : ThemeMode.light),
                              icon: Icon(widget.mode == ThemeMode.light
                                  ? Icons.dark_mode
                                  : Icons.light_mode))
                        ]),
                  ),
                  Container(
                    height: height * 0.8,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.account_circle,
                                color: Colors.blue,
                                size: 20,
                              ),
                              Text("About"),
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 60,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(45),
                                      child:
                                          Image.asset('assets/profile.png'))),
                              Text('Lungelo Ncube',
                                  style: TextStyle(fontSize: 30)),
                              SizedBox(height: 20),
                              Text('Flutter.Java\n Loves bae',
                                  style: TextStyle(fontSize: 20)),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  OutlinedButton.icon(
                                      style: OutlinedButton.styleFrom(
                                          side: BorderSide.none),
                                      label: Text("Github"),
                                      onPressed: () {
                                        _launchURL(
                                            'https://github.com/lungeloncube?tab=repositories');
                                      },
                                      icon: SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: Image.asset(
                                              'assets/github.png'))),
                                  OutlinedButton.icon(
                                      style: OutlinedButton.styleFrom(
                                          side: BorderSide.none),
                                      label: Text("LinkedIn"),
                                      onPressed: () {
                                        _launchURL(
                                            'https://www.linkedin.com/in/lungelo-ncube-40a74b106?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3Be%2F8Dt08USkyhe0SkP79hDQ%3D%3D');
                                      },
                                      icon: SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: Image.asset(
                                              'assets/linkedin.png'))),
                                ],
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Projects()),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  Icons.phone_android,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                                Text("Projects"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ));
        }
      },
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
