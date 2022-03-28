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
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top + kToolbarHeight,
            left: 40
          ),
          child: const Text("Find your \nnext Event. ",
            style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.3,
                height: 1.3,
                fontSize: 25),
          ),
        ),
        const Expanded(
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
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          child: Image.asset('assets/picture.jpg', width: MediaQuery.of(context).size.width, fit: BoxFit.cover,),
        ),
      ],
    );
  }
}
