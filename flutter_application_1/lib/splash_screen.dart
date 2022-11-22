import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'navbar/home.dart';

class splasscreen extends StatefulWidget {
  const splasscreen({super.key});

  @override
  State<splasscreen> createState() => _splasscreenState();
}

class _splasscreenState extends State<splasscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: ((context) => Login()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 20, 163, 230),
              Color.fromARGB(255, 2, 206, 80),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/persib.png",
                  height: 300.0,
                  width: 100.0,
                ),
              ],
            ),
            Text(
              "Portal Berita\n PERSIB BANDUNG",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
