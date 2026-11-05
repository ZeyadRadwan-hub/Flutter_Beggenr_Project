import 'package:flutter/material.dart';

import 'Contact.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [Icon(Icons.settings)],
        title: Text("My App"),
        backgroundColor: Colors.blueAccent[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person),
            Text("Eng. Zeyad Radwan", style: TextStyle(fontSize: 30)),
            Text("No Major yet", style: TextStyle(fontSize: 20)),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              },
              icon: Icon(Icons.person),
            ),
            ElevatedButton(onPressed: () {}, child: Text("ElevatedButton")),
            TextButton(onPressed: () {}, child: Text("TextButton")),
          ],
        ),
      ),
    );
  }
}
