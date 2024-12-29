import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({super.key});

  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/hotstarpng',
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
              ),
              Icon(
                Iconsax.setting_2_outline,
                color: Colors.white,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Help & Settings',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              // SizedBox(
              //   width: MediaQuery.of(context).size.width,
              // ),
            ],
          ),
        ],
        backgroundColor: Color(0xFF1B2B50),
        automaticallyImplyLeading: false,
      ),
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
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin:
                    EdgeInsets.only(left: 10, top: 150, right: 10, bottom: 0),
                child: Text(
                  'Login to Disney+ Hotstar',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 10, top: 0, right: 5, bottom: 12.5),
                child: Text(
                  'Start watching from where you left off, personalize for kids and more',
                  style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 10, top: 12.5, right: 10, bottom: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.5, 50),
                  ),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              Container(
                  margin:
                      EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 0),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Having trouble logging in? ',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 182, 181, 181),
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(
                          text: 'Get Help',
                          style: TextStyle(
                            color: Colors.blue, // Change color
                            fontSize: 14,
                            fontWeight: FontWeight.bold, // Make bold
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
