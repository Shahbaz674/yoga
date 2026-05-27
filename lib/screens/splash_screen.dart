import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yoga/app_colors.dart';
import 'package:yoga/screens/home.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => home()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image(image: AssetImage("asset/1.jpg"), fit: BoxFit.cover),
          ),
          Column(
            children: [
              SizedBox(height: 120),

              Padding(
                padding: EdgeInsets.only(left: 120),
                child: Text(
                  "welcome to            ",
                  style: TextStyle(
                    color: AppColors.welcomecolour,
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 70),
                child: Text(
                  "YOGASANA  ",
                  style: TextStyle(
                    color: AppColors.welcomecolour,
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
