import 'package:flutter/material.dart';
import 'package:hotstar_clone/page/download.dart';
import 'package:hotstar_clone/page/home_page.dart';
import 'package:hotstar_clone/page/search.dart';
import 'package:icons_plus/icons_plus.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedindex = 0;

  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Home_Page(),
          Search_Page(),
          Download_Page(),
          // Container(
          //   color: Color.fromRGBO(15, 16, 20, 2),
          // ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_1_outline),
            label: 'Home',
            backgroundColor: Color.fromRGBO(15, 16, 20, 2),
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.search_normal_1_outline),
            label: 'Search',
            backgroundColor: Color.fromRGBO(15, 16, 20, 2),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.play_circle_bold,
            ),
            label: 'New & Hot',
            backgroundColor: Color.fromRGBO(15, 16, 20, 2),
          ),
          BottomNavigationBarItem(
            icon: Icon(IonIcons.download),
            label: 'Downloads',
            backgroundColor: Color.fromRGBO(15, 16, 20, 2),
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.profile_circle_outline),
            label: 'My Space',
            backgroundColor: Color.fromRGBO(15, 16, 20, 2),
          ),
        ],
        iconSize: 25,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blue,
        currentIndex: selectedindex,
        onTap: onTapped,
        elevation: 10,
        showUnselectedLabels: true,
      ),
    );
  }
}
