import 'package:flutter/material.dart';
import 'package:myapp/screenshots.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Projects portfolio'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Images(
                                firstImage: 'assets/weather_first.jpg',
                                secondImage: 'assets/weather_second.jpg')),
                      );
                    },
                    enableFeedback: true,
                    textColor: Colors.black,
                    dense: true,
                    isThreeLine: true,
                    leading: Image.asset('assets/weather_app.png'),
                    subtitle: const Text(
                        "Weather App\nweather forecasting app to show weather forecast for an entire week"),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Images(
                                firstImage: 'assets/surfer_first.jpg',
                                secondImage: 'assets/surfer_second.jpg')),
                      );
                    },
                    enableFeedback: true,
                    textColor: Colors.black,
                    dense: true,
                    isThreeLine: true,
                    leading: Image.asset('assets/surfer_third.jpg'),
                    subtitle: const Text("Housing Surfer App\n Realestate app"),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
