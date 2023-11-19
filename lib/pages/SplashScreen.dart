import 'dart:async';
import 'package:flutter/material.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    Timer(const Duration(seconds: 10), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50
          ),
          Image.asset(
            'assets/images/splash_logo.png',
            width: 125,
          ),
          const SizedBox(
            height: 30,
            width: double.infinity,
          ),
          const Text(
            "BMI-CALCULATOR APP",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 200
          ),
          const CircularProgressIndicator(
            color: Color(0xffFF0C63),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Check Your BMI",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 148, 161, 233),
    );
  }
}
