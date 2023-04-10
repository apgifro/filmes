import 'package:filmes/screens/home.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  final List<Widget> _screens = [
    const Home(),
    const Scaffold(), // TODO
    const Scaffold(), // TODO
    const Scaffold(), // TODO
    const Scaffold(), // TODO
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 28.0,
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: 'Início',
              icon: Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(Icons.home),
              )),
          BottomNavigationBarItem(
              label: 'Jogos',
              icon: Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(Icons.sports_esports),
              )),
          BottomNavigationBarItem(
            label: 'Novidades',
            icon: Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(Icons.movie),
            ),
          ),
          BottomNavigationBarItem(
              label: 'Cenas',
              icon: Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(Icons.theater_comedy),
              )),
          BottomNavigationBarItem(
              label: 'Downloads',
              icon: Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(Icons.arrow_circle_down),
              )),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        selectedFontSize: 10.0,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 10.0,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
