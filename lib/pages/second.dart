import 'package:flutter/material.dart';
import 'package:hotstar_clone/pages/home.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  final List<Map<String, String>> languages = [
    {
      'image': 'assets/images/english.png',
      'title': 'English',
      'subtitle': 'English',
    },
    {
      'image': 'assets/images/tamil.png',
      'title': 'தமிழ்',
      'subtitle': 'Tamil',
    },
    {
      'image': 'assets/images/hindi.png',
      'title': 'हिंदी',
      'subtitle': 'Hindi',
    },
    {
      'image': 'assets/images/telugu.png',
      'title': 'తెలుగు',
      'subtitle': 'Telugu',
    },
    {
      'image': 'assets/images/malayalam.png',
      'title': 'മലയാളം',
      'subtitle': 'Malayalam',
    },
    {
      'image': 'assets/images/kannada.png',
      'title': 'বাংলা',
      'subtitle': 'Bengali',
    },
  ];

  List<bool> selectedLanguage = List.filled(6, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 134, 118, 118),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Text(
                    'Build Your HomePage',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.g_translate_rounded,
                        color: Colors.white54,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Choose Your Loved Languages',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: languages.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedLanguage[index] = !selectedLanguage[index];
                        });
                      },
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 83, 82, 82),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                languages[index]['image']!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          if (selectedLanguage[index])
                            Positioned(
                              top: 5,
                              right: 5,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.pink,
                                size: 30,
                              ),
                            ),
                          Positioned(
                            bottom: 30,
                            left: 5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  languages[index]['title']!,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            left: 5,
                            child: Column(
                              children: [
                                Text(
                                  languages[index]['subtitle']!,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Positioned(
                    child: Text(
                      "We will use your information to personalize and improve your Disney+ Hotstar experience and to send you information about the service. By clicking Start Watching you agree to our Terms of Use and acknowledge that you have read our Privacy Policy. Disney+ Hotstar will collect your location data and data relating to the other apps installed to offer personalized video suggestions and ads.",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  if (selectedLanguage.contains(true))
                    Positioned(
                        top: 50,
                        left: 15,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              print('Language selected');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 150)),
                            child: Text(
                              'Continue',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
