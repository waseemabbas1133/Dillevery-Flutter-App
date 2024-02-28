import 'dart:async';
import 'package:delivery/Sign_UpScreen.dart';
import 'package:flutter/material.dart';
class SplashScreen3 extends StatefulWidget {
  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}
class _SplashScreen3State extends State<SplashScreen3> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignUpScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/WhatsApp Image 2024-02-16 at 15.20.35_c6e67434.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
