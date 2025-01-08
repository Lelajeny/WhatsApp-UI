import 'package:flutter/material.dart';
import 'package:whatsapp_app/screens/Chats.dart';
import 'package:whatsapp_app/widgets/navbar.dart';

class Agreepage extends StatefulWidget {
  const Agreepage({super.key});

  @override
  State<Agreepage> createState() => _AgreepageState();
}

class _AgreepageState extends State<Agreepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
              margin: const EdgeInsets.all(150),
              child: Image(image: AssetImage('assets/images/ladimage.png'))),
          Container(
              margin: EdgeInsets.only(left: 100),
              child: const Text(
                "Welcome to WhatsApp",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              )),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: const Text.rich(TextSpan(
                text: 'Read our ',
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
                children: <InlineSpan>[
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  TextSpan(
                    text: '.Tap Agreee & contiue to accept the ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.grey),
                  ),
                  TextSpan(
                    text: 'Terms of Service',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  )
                ])),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, left: 40, right: 40),
            child: ElevatedButton(
              onPressed: () {
              Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Chats()));
                // Button action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  // Set the radius here
                ),
              ),
              child: Text(
                'Agree & Continue ',
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
