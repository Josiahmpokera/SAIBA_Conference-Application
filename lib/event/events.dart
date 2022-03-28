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

final _search_engine = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
           Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: TextFormField(
                    controller: _search_engine,
                    decoration: const InputDecoration(
                      filled: true,
                      border: InputBorder.none,
                      counterStyle: TextStyle(fontSize: 25),
                      label: Text("Search Here"),
                      prefixIcon: Icon(Icons.search_outlined, size: 34,),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  child:  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 5,
                        child: Column(
                          children: const [
                            Text("MON"),
                            SizedBox(height: 8,),
                            Text("05", style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),

                      Flexible(
                        child:  Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children:  [
                              const Text("Lorem Ipsum is simply dummy. ", style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),),
                              const SizedBox(height: 7,),
                              Row(
                                children: const [
                                  Icon(Icons.multitrack_audio_sharp, color: Colors.pink,),
                                  Text("Dr. Hashim Polepole"),
                                ],
                              ),
                              const SizedBox(height: 7,),
                              Row(
                                children: const [
                                  Icon(Icons.location_on, color: Colors.black,),
                                  Text("MWl.Nyerere Universoty Hall"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 2, width: double.infinity, color: Colors.black12,)
              ],
            ),
          ),
           Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  child:  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 5,
                        child: Column(
                          children: const [
                            Text("TUE"),
                            SizedBox(height: 8,),
                            Text("06", style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),

                      Flexible(
                        child:  Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children:  [
                              const Text("Lorem Ipsum is simply dummy. ", style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),),
                              const SizedBox(height: 7,),
                              Row(
                                children: const [
                                  Icon(Icons.multitrack_audio_sharp, color: Colors.pink,),
                                  Text("Dr. Hashim Polepole"),
                                ],
                              ),
                              const SizedBox(height: 7,),
                              Row(
                                children: const [
                                  Icon(Icons.location_on, color: Colors.black,),
                                  Text("MWl.Nyerere Universoty Hall"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 2, width: double.infinity, color: Colors.black12,)
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  child:  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 5,
                        child: Column(
                          children: const [
                            Text("WES"),
                            SizedBox(height: 8,),
                            Text("07", style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),

                      Flexible(
                        child:  Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children:  [
                              const Text("Lorem Ipsum is simply dummy. ", style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),),
                              const SizedBox(height: 7,),
                              Row(
                                children: const [
                                  Icon(Icons.multitrack_audio_sharp, color: Colors.pink,),
                                  Text("Dr. Hashim Polepole"),
                                ],
                              ),
                              const SizedBox(height: 7,),
                              Row(
                                children: const [
                                  Icon(Icons.location_on, color: Colors.black,),
                                  Text("MWl.Nyerere Universoty Hall"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 2, width: double.infinity, color: Colors.black12,)
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  child:  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 5,
                        child: Column(
                          children: const [
                            Text("THR"),
                            SizedBox(height: 8,),
                            Text("08", style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),

                      Flexible(
                        child:  Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children:  [
                              const Text("Lorem Ipsum is simply dummy. ", style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),),
                              const SizedBox(height: 7,),
                              Row(
                                children: const [
                                  Icon(Icons.multitrack_audio_sharp, color: Colors.pink,),
                                  Text("Dr. Hashim Polepole"),
                                ],
                              ),
                              const SizedBox(height: 7,),
                              Row(
                                children: const [
                                  Icon(Icons.location_on, color: Colors.black,),
                                  Text("MWl.Nyerere Universoty Hall"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 2, width: double.infinity, color: Colors.black12,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}