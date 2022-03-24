import 'package:flutter/material.dart';

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

  List<Widget> _screens = [
    MainHomeScreen(),
    Text("Screen Events"),
    Text("Screen Save"),
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

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

