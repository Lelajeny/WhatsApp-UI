import 'package:flutter/material.dart';
import 'package:whatsapp_app/screens/agreepage.dart';
import 'package:whatsapp_app/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: new Color(0xff075E54),
        
      ),
      home: const Agreepage(),
    );
  }
}
