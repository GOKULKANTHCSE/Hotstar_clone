import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  final List<String> carouselImage = [
    'https://imgs.search.brave.com/XSpSz92OL2rFOjS5H58XG4WZY82vpBbDpiO8S_oLYIE/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9nZXR3/YWxscGFwZXJzLmNv/bS93YWxscGFwZXIv/ZnVsbC8xLzkvYi8x/MjY3ODcxLWFtYXpp/bmctbW92aWUtcG9z/dGVyLXdhbGxwYXBl/ci0xOTIweDEwODAu/anBn',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH0TmlR4fZfiabA5rrKeSQL6SjMaC9f-VE3teO5UNZF0t1u3golVsZnRRkKkqUMU-nAJw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcbszmhOKi5m1ye5CZ-RaRLqKreZY0DXkscIsii2jSQioWnIE_xHYq4Xkah5pVd-plmHM&usqp=CAU',
  ];

  final List<String> images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQl09y_zbZZkFHSiy-ifR3J9yjOFwHsn68ju9LebdwB57fceKvxW8niRC81bUwHK76RE7M&usqp=CAU',
    'https://rukminim2.flixcart.com/image/850/1000/jn3hocw0/poster/j/s/q/medium-hollywood-movie-wall-poster-pirates-of-the-caribbean-dead-original-imaf9uv7zzgp6wvg.jpeg?q=90&crop=false',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7THupT9U750J9W2oMS-YHTp4tE-_rylzfDqQ9V7W1xq-BnD_SCJcwy8v3416KZHM_DeY&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToABjXIbMWnBljRyYOJ4N8GA5IdJDRZ7Xc8PNvGLfawi-nlydyS10hCaGIclP432_c4oM&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv3oC5ZdxSfqHlEBJtioM-Ljgq4UjHB4uhg6ZuM1_w1M72Ei6ho8z9nh2Ri5-hMiURc1A&usqp=CAU',
    'https://i.pinimg.com/originals/ec/f7/98/ecf798ea3d6de049ee02b19c9c470c2e.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1sHa9CO9Tj_CfCSsN0UrUYk6ApcGngkDmRA&s'
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

  final List<String> buttonLabels = [
    "Watch Now",
    "Explore More",
    "Subscribe",
    "Learn More"
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 16, 20, 1),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1B2B50), // Bottom Color
              Color(0xFF0A0F24), // Top Color
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
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
      ),
    );
  }

  Widget buildBannerCarousel() {
    return Stack(
      children: [
        Positioned(
          child: CarouselSlider(
            items: carouselImage.map((image) {
              return Image.network(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              );
            }).toList(),
            options: CarouselOptions(
              aspectRatio: 9 / 16,
              viewportFraction: 1,
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 2),
              height: 350,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          right: 95,
          child: ElevatedButton(
            onPressed: () {
              // Handle button action based on the currentIndex
              print("Button for Slide $currentIndex clicked!");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              minimumSize: Size(MediaQuery.of(context).size.width * 0.5, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              buttonLabels[currentIndex],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCategorySection(String category) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            children: [
              Text(
                category,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              Icon(
                Iconsax.arrow_right_1_outline,
                color: Colors.white,
              )
            ],
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
                child: Image.network(
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
