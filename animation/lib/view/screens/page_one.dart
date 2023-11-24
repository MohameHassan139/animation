import 'package:animation/view/screens/page_tow.dart';
import 'package:flutter/material.dart';

import '../../animation/page_anim.dart';


class PageOne extends StatefulWidget {
  const PageOne({super.key, required this.title});

  final String title;

  @override
  State<PageOne> createState() => _MyPageOneState();
}

class _MyPageOneState extends State<PageOne> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: MaterialButton(onPressed: (){
          Navigator.of(context).push(MultiAnimate(page: PageTow()));
        }, 
        child: Text('push to tow', style: TextStyle(color: Colors.white)),
        color: Colors.black,
        ),
      ),
    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
