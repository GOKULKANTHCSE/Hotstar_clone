import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:hotstar_clone/pages/home.dart';
import 'package:hotstar_clone/pages/first.dart';
// import 'package:hotstar_clone/widget/splash_screen.dart';

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
        brightness: Brightness.light,
      ),
      home: FirstPage(),
    );
  }
}
