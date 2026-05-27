import 'package:flutter/material.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image(image: AssetImage("asset/2.png"), fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
