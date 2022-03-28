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
            title: const Text("SAIBA Conference", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.black),),
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
        ),
    );
  }
}
