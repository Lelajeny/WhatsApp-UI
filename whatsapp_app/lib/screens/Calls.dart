import 'package:flutter/material.dart';
import 'package:whatsapp_app/widgets/navbar.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        bottomNavigationBar: navbar(),
    );
  }
}