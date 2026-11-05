import 'package:flutter/material.dart';
import 'package:beginner/Screens/ShowTheImages.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile Card"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.account_circle, size: 50),
            Text("Eng. Zeyad Radwan", style: TextStyle(fontSize: 30)),
            Text(
              "Back-end Developer | Trainer",
              style: TextStyle(fontSize: 15),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.phone),
              label: const Text("Call"),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.chat),
              label: const Text("Message"),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShowTheImages()),
                );
              },
              icon: Icon(Icons.image),
            ),
          ],
        ),
      ),
    );
  }
}
