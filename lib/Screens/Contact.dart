import 'package:flutter/material.dart';
import 'package:beginner/Screens/ProfileCard.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [Icon(Icons.settings)],
        title: Text("My App"),
        backgroundColor: Colors.blueAccent[500],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: ListTile(
                leading: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileCard()),
                    );
                  },
                  icon: Icon(Icons.person),
                ),
                title: Text(
                  "Eng. Zeyad Radwan",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "Zeyad@gmil.com",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Eng. Hamza Mostafa", style: TextStyle(fontSize: 20)),
              subtitle: Text("hamza@gmil.com", style: TextStyle(fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }
}
