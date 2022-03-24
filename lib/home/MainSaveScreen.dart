import 'package:flutter/material.dart';

class MainSaveScreen extends StatefulWidget {
  const MainSaveScreen({Key? key}) : super(key: key);

  @override
  State<MainSaveScreen> createState() => _MainSaveScreenState();
}

class _MainSaveScreenState extends State<MainSaveScreen>  with TickerProviderStateMixin{

  late final TabController  _tabController;

  List<Widget> _tabView = [
    Tab(
      child: Text("Jan"),
    ),
    Tab(
      child: Text("Feb"),
    ),
    Tab(
      child: Text("Mar"),
    ),
    Tab(
      child: Text("Apr"),
    ),
    Tab(
      child: Text("May"),
    ),
    Tab(
      child: Text("Jun"),
    ),
    Tab(
      child: Text("Jul"),
    ),
    Tab(
      child: Text("Aug"),
    ),
    Tab(
      child: Text("Sep"),
    ),
    Tab(
      child: Text("Oct"),
    ),
    Tab(
      child: Text("Nov"),
    ),
    Tab(
      child: Text("Dec"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 12,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("SAIBA Conference", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
            backgroundColor: Colors.white,
            bottom: TabBar(
              controller: _tabController,
              isScrollable: true,
              tabs: _tabView
            ),
          ),
        ),
    );
  }
}
