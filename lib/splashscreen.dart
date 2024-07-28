// TODO Implement this library.
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:playstore/main.dart';

//import 'package:login_page/login2.dart';

class First_page extends StatefulWidget {
  const First_page({super.key});

  @override
  State<First_page> createState() => _First_pageState();
}

class _First_pageState extends State<First_page> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => one())));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: sec(),
      ),
    );
  }
}

class sec extends StatefulWidget {
  const sec({super.key});

  @override
  State<sec> createState() => _secState();
}

class _secState extends State<sec> {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Positioned(
        child: Center(
          child: Container(
            height: 120,
            width: 120,
            child: Image.asset(
              "assets/img_2.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    ]);
  }
}
