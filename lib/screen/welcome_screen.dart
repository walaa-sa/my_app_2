import 'package:flutter/material.dart';
import 'package:my_app_2/constants/path_images.dart';
import 'package:my_app_2/constants/text_app.dart';
import 'package:my_app_2/screen/sign-in_screen.dart';
import 'package:my_app_2/widgets/welcom_wedget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController welcomeController = PageController();
  int currentIndex = 0;

  List<Widget> welcomeScreenWidget = [
    WelcomeWidget(
      myImage: PathImages.welcomeImage1,
      myTitle: TextApp.titlePage1,
      mySubtitle: TextApp.subtitlePage1,
    ),
    WelcomeWidget(
      myImage: PathImages.welcomeImage2,
      myTitle: TextApp.titlePage2,
      mySubtitle: TextApp.subtitlePage2,
    ),
    WelcomeWidget(
      myImage: PathImages.welcomeImage3,
      myTitle: TextApp.titlePage3,
      mySubtitle: TextApp.subtitlePage3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(top: 20),
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignIn();
                    },
                  ),
                );
              },
              child: const Text(
                "Skip",
                style: TextStyle(
                  color: Color(0xffC53030),
                  fontSize: 16,
                  fontFamily: "D-DIN",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: welcomeController,
              children: welcomeScreenWidget,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return Container(
                margin: const EdgeInsets.only(right: 5),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == index
                      ? const Color(0xffC53030)
                      : const Color(0xffD3D3D3),
                ),
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(330, 48),
                backgroundColor: const Color(0xffC53030),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              onPressed: currentIndex == 2
                  ? () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SignIn();
                          },
                        ),
                      );
                    }
                  : () {
                      welcomeController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
              child: Text(
                currentIndex == 2 ? "Get Started" : "Next",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "D-DIN",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
