import 'package:flutter/material.dart';
// import 'package:hotstar_clone/pages/second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              top: -10,
              left: -160,
              // // bottom: 50,
              child: Image(
                image: AssetImage('assets/images/movie.jpeg'),
              ),
            ),
            Positioned(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                // Below is the code for Linear Gradient.
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 7, 21, 83),
                      Color.fromARGB(8, 0, 0, 0)
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 500,
              left: 0,
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align children to the left
                children: [
                  // Image container aligned to the left
                  Container(
                    margin: EdgeInsets.all(15),
                    width: 200, // Adjust image width as needed
                    height: 200, // Set a fixed height for the image
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/hotstarpng'), // Include the file extension
                        fit: BoxFit
                            .cover, // Ensure the image covers the container
                      ),
                    ),
                  ),
                  // Text below the image
                  Container(
                    margin: EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Endless Entertainment, Free Movies on mobile, and much more',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                            height: 10), // Adds some space between the texts
                        Text(
                          'Stream Your Favorite Shows and Movies Anytime, Anywhere',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
