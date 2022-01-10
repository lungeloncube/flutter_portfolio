import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  final String firstImage;
  final String secondImage;
  const Images({Key? key, required this.firstImage, required this.secondImage})
      : super(key: key);

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(child: Image.asset(widget.firstImage)),
          Expanded(child: Image.asset(widget.secondImage))
        ],
      ),
    );
  }
}
