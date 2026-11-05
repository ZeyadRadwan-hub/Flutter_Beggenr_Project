import 'package:flutter/material.dart';

class ShowTheImages extends StatelessWidget {
  const ShowTheImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("Images/Background.png", width: 150, height: 100),
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("Images/Background.png"),
            ),
          ],
        ),
      ),
    );
  }
}
