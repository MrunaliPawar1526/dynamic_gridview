import 'dart:async';

import 'package:flutter/material.dart';

import 'gridview.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const GridviewScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Stack(children: [
        Container(
          height: 600,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Animation - 1698312830258.gif',
                height: 400,
                width: 400,
              ),
              const Center(
                child: Text(
                  "Wel-Come",
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
