import 'package:flutter/material.dart';
import 'package:whatsapp_app/widgets/navbar.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        bottomNavigationBar: navbar(),
    );
  }
}
