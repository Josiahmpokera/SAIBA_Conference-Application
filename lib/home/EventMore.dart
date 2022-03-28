import 'package:flutter/material.dart';

class EventMore extends StatefulWidget {
  const EventMore({Key? key}) : super(key: key);

  @override
  State<EventMore> createState() => _EventMoreState();
}

class _EventMoreState extends State<EventMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Flexible(child: Text("Tanzania Programmer Hackathon 2022"),),
        backgroundColor: const Color(0xF1023F48),
      ),
    );
  }
}
