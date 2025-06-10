import 'package:flutter/material.dart';

class TopNewsWidget extends StatelessWidget {
  final String pathImage;
  final String titleNews;
  final String logoChanel;
  final String nameChanel;
  final String dateNews;
  const TopNewsWidget({
    super.key,
    required this.pathImage,
    required this.titleNews,
    required this.logoChanel,
    required this.nameChanel,
    required this.dateNews,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 122,
          height: 68,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage),
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(titleNews,
                  maxLines: 2, style: const TextStyle(fontSize: 14)),
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    child: Image(image: AssetImage(logoChanel)),
                  ),
                  Text(nameChanel, style: const TextStyle(fontSize: 12)),
                  const Spacer(flex: 1),
                  Text(dateNews, style: const TextStyle(fontSize: 12)),
                  const Spacer(flex: 1),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_border, size: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
