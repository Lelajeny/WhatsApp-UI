import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold
    (
      backgroundColor: Colors.black,
         body: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(150),
              child: Image(image: AssetImage("assets/images/webicon.png"))),
            Text("from meta ")
          ],
         ),
    );
  }
}