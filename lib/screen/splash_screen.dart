import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:my_app_2/screen/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.gif(
      gifPath: 'assets/images/News-cycle-GIF.gif',
      gifWidth: 269,
      gifHeight: 474,
      nextScreen: const WelcomeScreen(),
      duration: const Duration(seconds: 3),
      onInit: () async {
        debugPrint("onInit");
      },
      onEnd: () async {
        debugPrint("onEnd 1");
        nextScreen:
        WelcomeScreen();
      },
    );
  }
}
