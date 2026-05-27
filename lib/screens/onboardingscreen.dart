// main.dart
import 'package:flutter/material.dart';
import 'package:yoga/screens/home.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  int currentIndex = 0;
  List<Image> images = [
    Image.asset("asset/4.png", fit: BoxFit.cover),
    Image.asset("asset/3.png", fit: BoxFit.cover),
    Image.asset("asset/5.png", fit: BoxFit.cover),
  ];

  List onboardingData = [
    {
      "image": Icons.shopping_bag,
      "title":
          "Stream hundreds of yoga\nand meditation classes on \nany device.",
      "description": "Discover a nwe courses everyday",
    },

    {
      "title": "Your Time Your Space",
      "description": "Custiomized  plains tailored to your\ngoals",
    },

    {
      "title": "Let help us In Your wellness",
      "description": "Audio choice for Mediation and\nbetter sleep",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAEEE7),

      body: SafeArea(
        child: Column(
          children: [
            /// Skip Button
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => home()),
                    );
                  },

                  child: const Text(
                    "Skip",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ),

            /// PageView
            Expanded(
              child: PageView.builder(
                controller: _controller,

                itemCount: onboardingData.length,

                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },

                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /// Icon
                        Container(
                          height: 400,
                          width: 400,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),

                          child: images[index],
                        ),

                        const SizedBox(height: 10),

                        /// Title
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            onboardingData[index]['title'],

                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        /// Description
                        Text(
                          onboardingData[index]['description'],

                          textAlign: TextAlign.center,

                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            /// Dots Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: List.generate(
                onboardingData.length,

                (index) => Container(
                  margin: const EdgeInsets.all(4),

                  height: 10,

                  width: currentIndex == index ? 10 : 10,

                  decoration: BoxDecoration(
                    color: currentIndex == index
                        ? Color(0xFFFF8BA7)
                        : Colors.grey,

                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),

            /// Next Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: SizedBox(
                width: double.infinity,
                height: 65,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF8BA7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),

                  onPressed: () {
                    if (currentIndex == onboardingData.length - 1) {
                      /// Last Screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => home()),
                      );
                    } else {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 500),

                        curve: Curves.ease,
                      );
                    }
                  },

                  child: Text(
                    currentIndex == onboardingData.length - 1
                        ? "Get Started"
                        : "CONTINUE",

                    style: const TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
