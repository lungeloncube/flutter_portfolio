import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 60,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Image.asset('assets/profile.jpg'))),
        const Text('Lungelo Ncube', style: TextStyle(fontSize: 30)),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.grey[100],
            width: 500,
            child: const Text(
                'Software developer with over two years experience in cross platform mobile application development. Knowledge in backend development using Java (using Spring boot framework) to build micro services. Excellent knowledge in website designing using JavaScript, HTML and CSS. Able to work in a fast-paced environment as part of an agile team',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 20)),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          color: Colors.grey[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(side: BorderSide.none),
                  label: const Text("Github"),
                  onPressed: () {
                    _launchURL(
                        'https://github.com/lungeloncube?tab=repositories');
                  },
                  icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset('assets/github.png'))),
              OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(side: BorderSide.none),
                  label: Text("LinkedIn"),
                  onPressed: () {
                    _launchURL(
                        'https://www.linkedin.com/in/lungelo-ncube-40a74b106?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3Be%2F8Dt08USkyhe0SkP79hDQ%3D%3D');
                  },
                  icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset('assets/linkedin.png'))),
            ],
          ),
        )
      ],
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
