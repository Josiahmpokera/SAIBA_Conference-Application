import 'dart:math';

import 'package:flutter/material.dart';

class MainSaveScreen extends StatefulWidget {
  const MainSaveScreen({Key? key}) : super(key: key);

  @override
  State<MainSaveScreen> createState() => _MainSaveScreenState();
}

class _MainSaveScreenState extends State<MainSaveScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(
            //top: MediaQuery.of(context).padding.top + kToolbarHeight,
            top: 30,
            left: 40
          ),
          child:  Text("Find your \nnext Event. ",
            style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.3,
                height: 1.3,
                fontSize: 25),
          ),
        ),
         Expanded(
            child: PageViewWidget()
        ),
      ],
    );
  }
}


class PageViewWidget extends StatefulWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {



  double viewportFraction = 0.8;
  late PageController pageController;

  late double pageOffSet = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 0, viewportFraction: viewportFraction)
    ..addListener(() {
      setState(() {
        pageOffSet = pageController.page!;

      });
    });
  }



  @override
  Widget build(BuildContext context) {



    return PageView.builder(
      controller: pageController,

      itemBuilder: (context, index){

        double scale = max(viewportFraction,
            (1 - (pageOffSet - index).abs()) + viewportFraction);

        double angle = (pageOffSet - index).abs();

        if(angle>0.5){
          angle = 1 - angle;
        }

        return Container(
          padding:  EdgeInsets.only(
              right: 20,
              top: 70 - scale *  25,
              bottom: 20
          ),
          child: Transform(
            transform: Matrix4.identity()..setEntry(
              3,
              2,
              0.001,)
              ..rotateY(angle),
            alignment: Alignment.center,
            child: Material(
              elevation: 4,
              child: Stack(
                children: <Widget>[
                  Image.asset('assets/shot.png',
                    width: MediaQuery.of(context).size.width, fit: BoxFit.cover,),
                   AnimatedOpacity(
                       opacity: angle == 0?1:0,
                       duration: const Duration(microseconds: 1700),
                     child:  Positioned(
                       top: 90,
                       left: 20,
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                 const Icon(Icons.location_on, color: Colors.red, size: 34,),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: const Color(0xF1BE0652)
                                    ),
                                    child: const Padding(
                                      padding:  EdgeInsets.all(8.0),
                                      child: Text("Mwl. Nyerere University Hall", style: TextStyle(color: Colors.white),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Expanded(
                              child: Text("Tanzania Programmer (Hackathon)", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              margin: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(Icons.multitrack_audio_sharp, color: Colors.pink,size: 34,),
                                 Expanded(child:  Text("Dr. Julian Mkayega", style: TextStyle(color: Colors.white, fontSize: 18),
                                 ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                   ),
                   ),
                ],
              ),
            ),
          ),
        );
      },

    );
  }
}
