import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Download_Page extends StatelessWidget {
  const Download_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text(
          'Downloads',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(15, 16, 20, 2),
      ),
      backgroundColor: Color.fromRGBO(15, 16, 20, 2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(5.0),
              child: Icon(
                FontAwesome.box_open_solid,
                size: 75,
                color: const Color.fromARGB(186, 3, 168, 244),
              ),
              alignment: Alignment.center,
            ),
            Container(
              child: Text(
                'No Downloads Available',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Explore and download your favourite movie and                  shows to watch on the go',
                  style: TextStyle(
                    color: const Color.fromARGB(246, 163, 165, 230),
                    fontSize: 15.5,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Go to Home',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.5,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.9, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
