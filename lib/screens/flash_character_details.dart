import 'package:flutter/material.dart';
import '../methods/character.dart';

class CharacterDetailsPage extends StatelessWidget {
  final Character character;
  final Color flashRed = Color.fromRGBO(145, 34, 34, 0.486);

  CharacterDetailsPage({required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.actorName),
        backgroundColor: flashRed,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              character.imagePath,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              padding: const EdgeInsets.all(16.0),
              child: Text(
                character.description,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
