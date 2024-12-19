import 'package:flutter/material.dart';
import 'package:hotstar_clone/widget/splash_screen.dart';

void main() {
  runApp(HotStar());
}

class HotStar extends StatelessWidget {
  const HotStar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: SplashScreen(),
    );
  }
}
