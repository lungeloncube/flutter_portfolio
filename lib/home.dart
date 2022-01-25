// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/mobile_home.dart';

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
    return LayoutBuilder(builder: (context, constraints) {
      return const MobileHome();
    });
  }
}
