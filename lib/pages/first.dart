import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:hotstar_clone/pages/home.dart';
import 'package:hotstar_clone/pages/second.dart';

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
              top: 490,
              left: 0,
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align children to the left
                children: [
                  // Image container aligned to the left
                  Container(
                    margin: EdgeInsets.only(
                        left: 15, top: 15, right: 15, bottom: 0),
                    width: 100, // Adjust image width as needed
                    height: 100, // Set a fixed height for the image
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
                    margin: EdgeInsets.only(
                        left: 15, top: 0, right: 15, bottom: 2.5),
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
                            height: 2.5), // Adds some space between the texts
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'By proceeding you confirm that you are above 18 years of age and agree to the ',
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 182, 181, 181),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              TextSpan(
                                text: 'Privacy Policy ',
                                style: TextStyle(
                                  color: Colors.white, // Change color
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold, // Make bold
                                ),
                              ),
                              TextSpan(
                                text: 'and ',
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 182, 181, 181),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              TextSpan(
                                text: 'Terms of Use',
                                style: TextStyle(
                                  color: Colors.white, // Change color
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold, // Make bold
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 10, top: 0, right: 10, bottom: 0),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/marvel-logo.png'), // Include the file extension
                            fit: BoxFit
                                .cover, // Ensure the image covers the container
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 10, top: 0, right: 10, bottom: 0),
                        height: 60,
                        width: 85,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/nat.png'), // Include the file extension
                            fit: BoxFit
                                .cover, // Ensure the image covers the container
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 10, top: 0, right: 10, bottom: 0),
                        height: 35,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/sw.png'), // Include the file extension
                            fit: BoxFit
                                .cover, // Ensure the image covers the container
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 10, top: 0, right: 10, bottom: 0),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/pix.png'), // Include the file extension
                            fit: BoxFit
                                .cover, // Ensure the image covers the container
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 0),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your onPressed logic here
                          // print('Continue button pressed');
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Second()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue, // Text color
                          minimumSize: Size(
                              MediaQuery.of(context).size.width * 0.9,
                              50), // Button size
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Rounded corners
                          ),
                          elevation: 5, // Button elevation for shadow effect
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Continue',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      top: 0,
                      right: 20,
                      bottom: 0,
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          // Text color
                          minimumSize: Size(
                              MediaQuery.of(context).size.width * 0.9,
                              50), // Button size
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Rounded corners
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.g_translate_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Choose App Language',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
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
