import 'package:flutter/material.dart';

import '../event/events.dart';
import 'MainEventScreen.dart';
import 'MainSaveScreen.dart';
import 'mainHomeScreen.dart';


/*
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



import 'package:flutter/material.dart';

class MainSaveScreen extends StatefulWidget {
  const MainSaveScreen({Key? key}) : super(key: key);

  @override
  State<MainSaveScreen> createState() => _MainSaveScreenState();
}

class _MainSaveScreenState extends State<MainSaveScreen>  with TickerProviderStateMixin{


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabView.length, vsync: this);
  }

  int _selectedScreen = 0;

  void onTap(int index) {
    setState(() {
      _selectedScreen = index;
    });
  }

  final List<Widget> _tabScreen =  [

    const OneWeekTab(),

    Container(
      child: Text("Second sTabScreen"),
    ),

    Container(
      child: Text("Third sTabScreen"),
    ),
  ];

  late  TabController  _tabController;

  List<Widget> _tabView = [
    Tab(
      child: Text("This Week"),
    ),
    Tab(
      child: Text("This Month"),
    ),
    Tab(
      child: Text("3 Month ago"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text("SAIBA Conference", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Economica'),),
          backgroundColor: Colors.white,
          bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              padding: const EdgeInsets.all(10),
              indicator: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8)
              ),
              controller: _tabController,
              tabs: _tabView
          ),
        ),
        body: _tabScreen.elementAt(_selectedScreen),
      ),
    );
  }
}

class OneWeekTab extends StatefulWidget {
  const OneWeekTab({Key? key}) : super(key: key);

  @override
  State<OneWeekTab> createState() => _OneWeekTabState();
}

class _OneWeekTabState extends State<OneWeekTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      children: [

        GestureDetector(
          onTap: (){
            // _newDisplayScreen();
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 85,
                  width: 7,
                  color: Colors.pink,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  //Right Content in here
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Michael Jordan", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
                      Text("Health in Computerized World", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 17, color: Colors.blueGrey),),
                      Text("10:00 am - 12:00 am"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        GestureDetector(
          onTap: (){
            // _newDisplayScreen();
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 85,
                  width: 7,
                  color: Colors.pink,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  //Right Content in here
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Michael Jordan", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
                      Text("Health in Computerized World", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 17, color: Colors.blueGrey),),
                      Text("10:00 am - 12:00 am"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        GestureDetector(
          onTap: (){
            // _newDisplayScreen();
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 85,
                  width: 7,
                  color: Colors.pink,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  //Right Content in here
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Michael Jordan", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
                      Text("Health in Computerized World", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 17, color: Colors.blueGrey),),
                      Text("10:00 am - 12:00 am"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        GestureDetector(
          onTap: (){
            // _newDisplayScreen();
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 85,
                  width: 7,
                  color: Colors.pink,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  //Right Content in here
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Michael Jordan", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
                      Text("Health in Computerized World", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 17, color: Colors.blueGrey),),
                      Text("10:00 am - 12:00 am"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        GestureDetector(
          onTap: (){
            // _newDisplayScreen();
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 85,
                  width: 7,
                  color: Colors.pink,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  //Right Content in here
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Michael Jordan", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
                      Text("Health in Computerized World", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 17, color: Colors.blueGrey),),
                      Text("10:00 am - 12:00 am"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

*/