// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:travello/views/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff3951),
      body: Column(
        children: [
          const SizedBox(height: 245, width: double.infinity),
          Image.asset('assets/images/splash_logo.png', width: 244, height: 216),
        ],
      ),
    );
  }
}
