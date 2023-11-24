import 'package:animation/view/screens/page_one.dart';
import 'package:flutter/material.dart';

import '../../animation/page_anim.dart';

class PageTow extends StatefulWidget {
  PageTow({
    super.key,
  });

  @override
  State<PageTow> createState() => _MyPageTowState();
}

class _MyPageTowState extends State<PageTow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,


      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.black, Colors.blue]),
          ),
        ),
        title: Text('Page tow'),
      ),
      body: Center(
        child: MaterialButton(onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('push to one'),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
