import 'package:flutter/material.dart';
import 'package:hotstar_clone/pages/first.dart';
// import 'package:hotstar_clone/pages/second.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FirstPage(),
    );
  }
}
