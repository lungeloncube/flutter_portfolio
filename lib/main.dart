import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
import 'package:myapp/mobile_home.dart';
import 'package:myapp/theme_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _notifier = ValueNotifier<ThemeModel>(ThemeModel(ThemeMode.light));

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeModel>(
        valueListenable: _notifier,
        builder: (_, model, __) {
          final mode = model.mode;
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Lungelo Ncube',
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: mode,
            home: MobileHome(
              mode: mode,
              notifier: _notifier,
            ),
          );
        });
  }
}
