import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ultimate_teen_patti/HomePage/homePage.dart';
import 'package:ultimate_teen_patti/registrationscreen.dart';


class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {

  @override
  void initState() {
    super.initState();
    teenpatti();
  }

  teenpatti() async {
    Timer(
      const Duration(
        seconds: 5,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => registration(),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage("assets/images/rlg.jpeg"),
              fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              height: 40,
            ),
            Container(
              height: 40,
                width: 40,
                child: CircularProgressIndicator(
                  color: Colors.white,
                strokeWidth: 3,
                ))
          ],
        ),
      ),
    );
  }
}
