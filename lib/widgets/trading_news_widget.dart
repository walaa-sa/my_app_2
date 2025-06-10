import 'package:flutter/material.dart';

class TradingNewsWidget extends StatelessWidget {
  final String pathImage;
  final String titleNews;
  final String logoChanel;
  final String nameChanel;
  final String dateNews;
  const TradingNewsWidget({
    super.key,
    required this.pathImage,
    required this.titleNews,
    required this.logoChanel,
    required this.nameChanel,
    required this.dateNews,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 232,
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage),
            ),
          ),
        ),
        Positioned(
          left: 15,
          top: 50,
          right: 10,
          bottom: 1,
          child: Text(titleNews,
              maxLines: 2,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        Positioned(
          left: 10,
          right: 10,
          bottom: 0,
          top: 90,
          child: Row(
            children: [
              CircleAvatar(
                radius: 10,
                child: Image(image: AssetImage(logoChanel)),
              ),
              Text(nameChanel,
                  style: const TextStyle(fontSize: 10, color: Colors.white)),
              const Spacer(flex: 1),
              Text(dateNews,
                  style: const TextStyle(fontSize: 10, color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
