import 'package:flutter/material.dart';
import 'package:yoga/app_colors.dart';
import 'package:yoga/screens/home.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: Center(child: Text("data")),
    );
  }
}
