import 'package:flash_app/screens/flash_opinion.dart';
import 'package:flash_app/screens/hire_me.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FlashCoverPage extends StatefulWidget {
  @override
  _FlashCoverPageState createState() => _FlashCoverPageState();
}

class _FlashCoverPageState extends State<FlashCoverPage> {
  Color flashRed = Color.fromRGBO(145, 34, 34, 0.486);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: flashRed,
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 400.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
                items: [
                  Image.asset("images/portada.webp", fit: BoxFit.cover),
                  Image.asset("images/flash2.jpg", fit: BoxFit.cover),
                  Image.asset("images/grant_gustin_arrow.webp",
                      fit: BoxFit.cover),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 13.0),
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        "Acerca de",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "The Flash es una serie de televisión estadounidense de superhéroes desarrollada por Greg Berlanti, Andrew Kreisberg y Geoff Johns, que se emite en The CW en Estados Unidos. Está basada en el personaje de DC Comics Barry Allen / Flash, un superhéroe disfrazado que lucha contra el crimen con el poder de moverse a velocidades sobrehumanas.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Creador: Greg Berlanti, Geoff Johns, Andrew Kreisberg",
                        style: TextStyle(
                            fontSize: 16, fontStyle: FontStyle.italic),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Temporadas: 9",
                        style: TextStyle(
                            fontSize: 16, fontStyle: FontStyle.italic),
                      ),
                      Text(
                        "Capitulos: 184",
                        style: TextStyle(
                            fontSize: 16, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FlashOpinionPage()),
                        );
                      },
                      child: Text('Mi opinion'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserProfilePage()),
                        );
                      },
                      child: Text('Contratame'),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
