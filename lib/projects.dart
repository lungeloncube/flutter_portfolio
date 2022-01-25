import 'package:flutter/material.dart';
import 'package:myapp/screenshots.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: const [
              ProjectTile(
                firstImage: 'assets/weather_first.jpg',
                secondImage: 'assets/weather_second.jpg',
                leading: 'assets/weather_app.png',
                subtitle: Text(
                    "Weather App\nweather forecasting app to show weather forecast for an entire week"),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: const [
              ProjectTile(
                firstImage: 'assets/surfer_first.jpg',
                secondImage: 'assets/surfer_second.jpg',
                leading: 'assets/surfer_third.jpg',
                subtitle:
                    Text("Housing surfer\nHousing Surfer App\n Realestate app"),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProjectTile extends StatelessWidget {
  final String firstImage;
  final String secondImage;
  final String leading;
  final Widget subtitle;
  const ProjectTile({
    Key? key,
    required this.firstImage,
    required this.secondImage,
    required this.leading,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        tileColor: Colors.grey[200],
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Images(firstImage: firstImage, secondImage: secondImage)),
          );
        },
        enableFeedback: true,
        textColor: Colors.black,
        dense: true,
        isThreeLine: true,
        leading: Image.asset(leading),
        subtitle: subtitle,
      ),
    );
  }
}
