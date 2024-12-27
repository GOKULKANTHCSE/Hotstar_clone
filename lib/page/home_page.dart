import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  final List<String> images = [
    'assets/images/english.png',
    'assets/images/tamil.png',
    'assets/images/telugu.png',
    'assets/images/malayalam.png',
  ];

  final List<String> categories = [
    "Trending Now",
    "Popular Movies",
    "Recommended",
    "Live Channels"
  ];

  final List<String> contents = [
    'Trendings',
    'Favirote',
    'தமிழ்',
    'English',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 16, 20, 1),
      body: ListView(
        children: [
          buildBannerCarousel(),
          ...categories.map((category) {
            return buildCategorySection(category);
          }).toList(),
        ],
      ),
      // Column(
      //   children: [
      //     // Column(
      //     //   children: [
      //     //     SizedBox(
      //     //       width: MediaQuery.of(context).size.width,
      //     //       height: 100,
      //     //       child: Image.asset(
      //     //         'assets/images/solo.jpeg',
      //     //         fit: BoxFit.cover,
      //     //       ),
      //     //     ),
      //     //     Row(
      //     //       children: [
      //     //         Container(
      //     //           width: 350,
      //     //           height: 50,
      //     //           color: Colors.blueGrey,
      //     //           child: Text(
      //     //             'Solo Leveling New Movie',
      //     //             style: TextStyle(
      //     //               color: Colors.white,
      //     //               fontWeight: FontWeight.bold,
      //     //               fontSize: 20,
      //     //             ),
      //     //           ),
      //     //         ),
      //     //         Container(
      //     //           height: 50,
      //     //           width: 98,
      //     //           // color: Colors.blueGrey,
      //     //           child: Text(
      //     //             'Subscribe',
      //     //             style: TextStyle(
      //     //               fontSize: 20,
      //     //               color: Colors.amber,
      //     //             ),
      //     //             textAlign: TextAlign.center,
      //     //           ),
      //     //           decoration: BoxDecoration(
      //     //             borderRadius: BorderRadius.circular(10),
      //     //             color: Colors.blueGrey,
      //     //           ),
      //     //         ),
      //     //       ],
      //     //     ),
      //     //   ],
      //     // ),

      //   ],
      // ),
    );
  }

  Widget buildBannerCarousel() {
    return CarouselSlider(
      items: [
        Image.asset(
          'assets/images/solo.jpeg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/images/tamil.png',
          fit: BoxFit.contain,
        ),
        Image.network(
          'https://imgs.search.brave.com/XSpSz92OL2rFOjS5H58XG4WZY82vpBbDpiO8S_oLYIE/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9nZXR3/YWxscGFwZXJzLmNv/bS93YWxscGFwZXIv/ZnVsbC8xLzkvYi8x/MjY3ODcxLWFtYXpp/bmctbW92aWUtcG9z/dGVyLXdhbGxwYXBl/ci0xOTIweDEwODAu/anBn',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://rukminim2.flixcart.com/image/850/1000/jn3hocw0/poster/j/s/q/medium-hollywood-movie-wall-poster-pirates-of-the-caribbean-dead-original-imaf9uv7zzgp6wvg.jpeg?q=90&crop=false',
          fit: BoxFit.contain,
        )
        // Text(
        //   'Hello',
        //   style: TextStyle(
        //     fontWeight: FontWeight.bold,
        //     color: Colors.amber,
        //   ),
        //   textAlign: TextAlign.center,
        // ),
      ],
      options: CarouselOptions(
        viewportFraction: 1,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(seconds: 2),
        height: 350,
      ),
    );
  }

  Widget buildCategorySection(String category) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            category,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                  width: 100,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
