import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text("Home Page"),
        ],
      )),
    );
  }
}
