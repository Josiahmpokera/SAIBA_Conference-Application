import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            decoration: const BoxDecoration(
              color:  Color(0xFFFFCFC8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurStyle: BlurStyle.solid,
                  spreadRadius: 3,
                  offset: Offset(4, 4)
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:const EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height / 7,
                  width: double.infinity,
                  child: Image.asset('assets/shot.png', fit: BoxFit.cover,),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Data Scientific Meeting"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Row(
                    children: const [
                    Icon(Icons.calendar_month, color: Colors.pink,),
                      Text("1 Feb 2022"),
                      SizedBox(width: 4,),
                      Icon(Icons.location_on),
                      SizedBox(width: 4,),
                      Text("Vodacome HQ"),
                    ],
                  ),
                ),
               Padding(
                   padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                   child: RaisedButton(
                   onPressed: (){},
                   color: Colors.black,
                   child: Text("Book Seat", style: TextStyle(color: Colors.white),),
                 )
               )
              ],
            ),
          ),

          //Another Card that Saved

        ],
      ),
    );
  }
}

