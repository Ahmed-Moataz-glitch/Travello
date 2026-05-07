import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 25, width: double.infinity),
            Text(
              'Welcome to Home',
              style: TextStyle(
                color: Color(0xff252525),
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 179),
            Image.asset(
              'assets/icons/welcome_icon.png',
              width: 300,
              height: 155,
            ),
          ],
        ),
      ),
    );
  }
}