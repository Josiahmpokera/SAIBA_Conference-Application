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

       icon: Icon(Icons.event,color: Colors.blue,),
      child: Text("Jan", style: TextStyle(color: Colors.white),),
    ),
    Tab(
      icon: Icon(Icons.event,color: Colors.blue,),
      child: Text("Feb", style: TextStyle(color: Colors.black),),
    ),
    Tab(
      icon: Icon(Icons.event,color: Colors.blue,),
      child: Text("Mar", style: TextStyle(color: Colors.black),),
    ),
    Tab(
      icon: Icon(Icons.event,color: Colors.blue,),
      child: Text("Apr", style: TextStyle(color: Colors.black),),
    ),
    Tab(
      icon: Icon(Icons.event,color: Colors.blue,),
      child: Text("May", style: TextStyle(color: Colors.black),),
    ),
    Tab(
      icon: Icon(Icons.event,color: Colors.blue,),
      child: Text("Jun", style: TextStyle(color: Colors.black),),
    ),
    Tab(
      icon: Icon(Icons.event,color: Colors.blue,),
      child: Text("Jul", style: TextStyle(color: Colors.black),),
    ),
    Tab(
      icon: Icon(Icons.event,color: Colors.blue,),
      child: Text("Aug", style: TextStyle(color: Colors.black),),
    ),
    Tab(
      icon: Icon(Icons.event,color: Colors.blue,),
      child: Text("Sep", style: TextStyle(color: Colors.black),),
    ),
    Tab(
      icon: Icon(Icons.event,color: Colors.blue,),
      child: Text("Oct", style: TextStyle(color: Colors.black),),
    ),
    Tab(
      icon: Icon(Icons.event,color: Colors.blue,),
      child: Text("Nov", style: TextStyle(color: Colors.black),),
    ),
    Tab(
      icon: Icon(Icons.event,color: Colors.blue,),
      child: Text("Dec", style: TextStyle(color: Colors.black),),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 12,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("SAIBA Conference", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
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
              isScrollable: true,
              tabs: _tabView
            ),
          ),
        ),
    );
  }
}
