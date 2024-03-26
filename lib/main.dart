import 'package:flutter/material.dart';
import 'screens/flash_character.dart';
import 'screens/flash_cover_page.dart';
import 'screens/flash_moment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    FlashCoverPage(),
    FlashCharacterPage(),
    FlashMomentsPage(),
  ];

  final Map<int, String> _pageTitles = {
    0: 'The Flash Series',
    1: 'Personajes',
    2: 'Momentos',
    3: 'Opinion'
  };

  @override
  Widget build(BuildContext context) {
    Color flashRed = Color.fromRGBO(145, 34, 34, 0.486);
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitles[_selectedIndex] ?? 'The Flash Series',
            style: TextStyle(fontSize: 24)),
        centerTitle: true,
        backgroundColor: flashRed,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Portada',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Personajes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Momentos',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
