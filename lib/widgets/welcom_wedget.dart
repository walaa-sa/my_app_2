import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  final String myImage;
  final String myTitle;
  final String mySubtitle;
  const WelcomeWidget({
    super.key,
    required this.myImage,
    required this.myTitle,
    required this.mySubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(myImage),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                myTitle,
                style: const TextStyle(
                  fontFamily: "D-DIN",
                  color: Color(0xff4E4B66),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 326,
              child: Text(
                mySubtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: "D-DIN",
                  color: Color(0xff6E7191),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
