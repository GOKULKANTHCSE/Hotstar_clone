import 'package:flutter/material.dart';
import 'package:hotstar_clone/page/download.dart';
import 'package:hotstar_clone/page/home_page.dart';
import 'package:hotstar_clone/page/profile.dart';
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
        onPageChanged: (index) {
          setState(() {
            selectedindex = index;
          });
        },
        children: [
          const Home_Page(),
          const Search_Page(),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF1B2B50),
                  Color(0xFF0A0F24),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: const Center(
              child: Text(
                'Update shortly',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          const Download_Page(),
          const Profile_Page(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // For consistent coloring
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_1_outline),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.search_normal_1_outline),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.play_circle_bold),
            label: 'New & Hot',
          ),
          BottomNavigationBarItem(
            icon: Icon(IonIcons.download),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.profile_circle_bold),
            label: 'My Space',
          ),
        ],
        currentIndex: selectedindex,
        onTap: onTapped,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blue,
        showUnselectedLabels: true,
        elevation: 10,
        iconSize: 23.5,
        backgroundColor: const Color(0xFF0A0F24),
      ),
    );
  }
}
