import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:icons_plus/icons_plus.dart';
import 'dart:math';

class Search_Page extends StatefulWidget {
  const Search_Page({super.key});

  @override
  State<Search_Page> createState() => _Search_PageState();
}

class _Search_PageState extends State<Search_Page> {
  final List<String> image = [
    'https://static.toiimg.com/thumb/imgsize-23456,msid-71847699,width-600,resizemode-4/71847699.jpg',
    'https://imgs.search.brave.com/K6zJtkf00QV7D_NNiIFIZbw34VtA9VX9OnX-LKCX7oI/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93d3cu/am9ibG8uY29tL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDI0LzAy/L21vYW5hLTItcG9z/dGVyLTEtNDAweDYw/MC5qcGc',
    'https://imgs.search.brave.com/XSpSz92OL2rFOjS5H58XG4WZY82vpBbDpiO8S_oLYIE/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9nZXR3/YWxscGFwZXJzLmNv/bS93YWxscGFwZXIv/ZnVsbC8xLzkvYi8x/MjY3ODcxLWFtYXpp/bmctbW92aWUtcG9z/dGVyLXdhbGxwYXBl/ci0xOTIweDEwODAu/anBn',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4EIuDx-tBVTI70CWerfKz41XOl5JoTmqo_A&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGGDqCPKypoSrtS7ct6fEySMPJW_UuRjKs4Q&s',
    'https://static.moviecrow.com/gallery/20240814/232831-The%20Greatest%20of%20All%20Time%20Vijay%20Meenakshi%20Chaudhary%20Sneha%20Prashanth%20Laila%20Prabhu%20Deva%20Mohan%20Jayaram%20Premgi%20Yogi%20Babu.jpg',
    'https://tmpc.movie.blog/wp-content/uploads/2018/10/trisha-krishnan-vijay-sethupathi-96-movie-new-poster.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4abHLegD6Dc6VXTN0_53kddfuT4OEaUJmrw&s',
    'https://rukminim2.flixcart.com/image/850/1000/jn3hocw0/poster/j/s/q/medium-hollywood-movie-wall-poster-pirates-of-the-caribbean-dead-original-imaf9uv7zzgp6wvg.jpeg?q=90&crop=false',
  ];

  final Random random = Random();

  final List<String> trendings = [
    'Movies',
    'Shows',
    'Action',
    'Drama',
    'Romance',
    'Thriller',
    'Horror',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(15, 16, 20, 1),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Search for 'crime'",
                hintStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                suffixIcon:
                    const Icon(Iconsax.microphone_outline, color: Colors.grey),
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Trending Section Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Trending in',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Horizontal List of Trending Items
            SizedBox(
              height: 50, // Fix the height to ensure proper constraints
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          SizedBox(
                              height: 50,
                              width: 100,
                              child: Row(
                                children: [
                                  const Icon(Icons.trending_up,
                                      color: Colors.grey, size: 30),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'India',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.5),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              )),
                        ],
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: const Color.fromRGBO(25, 26, 30, 1),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    const SizedBox(width: 5),
                    // Generate trending items dynamically
                    ...trendings.map((item) {
                      return Container(
                        width: 100, // Set fixed width for each item
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(25, 26, 30, 1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            item,
                            style: const TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      );
                    }).toList(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Grid Section Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Explore Categories',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Grid of Categories
            Expanded(
              child: MasonryGridView.builder(
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                ),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                itemCount: image.length,
                padding: const EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  final randomHeight =
                      random.nextInt(200) + 100; // Random height
                  return Card(
                    child: Container(
                      height: randomHeight.toDouble(),
                      child: Image.network(
                        image[index],
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Icon(
                              Icons.broken_image,
                              color: Colors.grey,
                              size: 50,
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
