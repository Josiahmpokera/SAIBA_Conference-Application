import 'package:flutter/material.dart';

import 'MainEventScreen.dart';
import 'MainSaveScreen.dart';
import 'mainHomeScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selected = 0;

  void onTap(int index) {
    setState(() {
      _selected = index;
    });
  }

  final List<Widget> _screens = const [
    MainSaveScreen(),
    MainEventScreen(),
    MainSaveScreen(),
  ];

  List<BottomNavigationBarItem>  _bottomItems =  [
    BottomNavigationBarItem(
      label: 'Home',
        icon: Icon(Icons.home_filled),
    ),

    BottomNavigationBarItem(
      label: 'Events',
      icon: Icon(Icons.event),
    ),

    BottomNavigationBarItem(
      label: 'Saved',
      icon: Icon(Icons.bookmark),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     bottomNavigationBar: BottomNavigationBar(
       items: _bottomItems,
       currentIndex: _selected,
       onTap: onTap,
     ),
      body: _screens.elementAt(_selected),
    );
  }
}

