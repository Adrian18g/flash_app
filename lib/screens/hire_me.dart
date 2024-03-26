import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  final Color flashRed = Color.fromRGBO(145, 34, 34, 0.486);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mi Perfil"), backgroundColor: flashRed),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Image.asset('images/Adrian.jpeg'),
            ),
            SizedBox(height: 20),
            Text(
              "Adrian Gonzalez",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Adriangonzalesag18@gmail.com",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
