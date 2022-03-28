import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventInside extends StatefulWidget {
  const EventInside({Key? key}) : super(key: key);

  @override
  State<EventInside> createState() => _EventInsideState();
}

class _EventInsideState extends State<EventInside> {


  //Change the Color when CLick
  Color  _IconColor = const Color(0xF1000000);

  void _onPress(){
    _IconColor = const Color(0xF1FE052F);
    print("Something Clicled");
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    _onPress();
  }
// backgroundColor:const  Color(0xFFF0F9F6),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F9F6),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xF101112C),
        onPressed: (){},
        child:const Icon(Icons.bookmark, color: Colors.white,),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              Container(
                margin: const EdgeInsets.all(9),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white
                ),
                child: Center(
                  child: IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.ios_share, color: Colors.black,),
                  ),
                ),
              ),
            ],
            stretch: false,
            leading: Container(
              margin: const EdgeInsets.all(9),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black,),
                ),
              ),
            ),
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                    image:  DecorationImage(
                        fit: BoxFit.cover,
                        image: ExactAssetImage('assets/animation/images.png')
                    )
                ),
              ),
            ),
          ),



          SliverToBoxAdapter(
            child:  Container(
              margin: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
              child: Row(
                children: [
                  const Expanded(child: Text("Discuss Health in Computerized World (Tanzania)", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
                  ),
                  IconButton(
                    onPressed: (){
                      _onPress();
                    },
                    icon: Icon(Icons.favorite, color: _IconColor,),)
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child:  //TIme and Date Container
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10, left: 13, right: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.timelapse),
                      SizedBox(width: 10,),
                      Text("9:00 - 12:00 AM")
                    ],
                  ),

                  //Date Row
                  Row(
                    children: const [
                      Icon(Icons.calendar_month),
                      Text("10 Aug 2022")
                    ],
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 13),
              child: const Text("About", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
            ),
          ),


          //Description
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 13),
              child:  const Expanded(
                child: Text("Lorem ipsum dolor sit amet consectetur, adipisicing elit. Id ex reiciendis pariatur illo culpa ducimus laborum officia recusandae qui ut expedita perspiciatis suscipit, a aliquid tenetur sunt amet. Quibusdam, soluta?", style: TextStyle(color: Colors.blueGrey, fontSize: 18, wordSpacing: 3, height: 1.5),),
              ),
            ),
          ),


          //Speaker Details here
          SliverToBoxAdapter(
            child:
            Container(
                margin: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(0xF1100127),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: const [
                      Icon(Icons.multitrack_audio_sharp, color: Colors.white,),
                      SizedBox(width: 8,),
                      Text("Samuel Jacob Mmbaga", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),),
                      SizedBox(width: 8,),
                      Text("Host", style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )
            ),
          ),

          SliverToBoxAdapter(
            child: //Map Title and Details
            Container(
              margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.location_on_outlined),
                      Text("Location", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                    ],
                  ),

                  Row(
                    children: const [
                      Icon(Icons.map_rounded, color: Colors.deepOrange,),
                      Text("UDSM (Nkuruma Hall)")
                    ],
                  ),
                ],
              ),
            ),


          ),
          //Google Map API Here

        ],
      ),
    );
  }
}