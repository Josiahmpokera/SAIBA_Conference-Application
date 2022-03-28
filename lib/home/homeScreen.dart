import 'package:flutter/material.dart';

import '../event/events.dart';
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
    EventInside(),
    EventInside(),
  ];

  final List<BottomNavigationBarItem>  _bottomItems =  [
    const BottomNavigationBarItem(
      label: 'Home',
        icon: Icon(Icons.home_filled),
    ),


    const BottomNavigationBarItem(
      label: 'Saved',
      icon: Icon(Icons.bookmark),
    ),

    const BottomNavigationBarItem(
      label: 'Schedule',
      icon: Icon(Icons.timelapse),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
       elevation: 0,
       backgroundColor: const Color(0xF1023F48),
       centerTitle: true,
       title:  Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             color: Colors.pink,
             child: const Padding(
               padding: EdgeInsets.all(4.0),
               child: Text("SAIBA", style: TextStyle(fontFamily: 'Economica'),
           ),
             ),
           ),
           SizedBox(width: 3,),
           Container(
             child: Text("Conference", style: TextStyle(fontFamily: 'Economica'),),
           ),
         ],
       ),
       actions: [
         IconButton(onPressed: (){},
             icon: const Icon(Icons.settings, color: Colors.white,))
       ],
     ),


     bottomNavigationBar: BottomNavigationBar(
       items: _bottomItems,
       selectedItemColor: const Color(0xF1023F48),
       currentIndex: _selected,
       selectedIconTheme: const IconThemeData(size: 40),
       onTap: onTap,
     ),
      body: _screens.elementAt(_selected),
    );
  }
}

