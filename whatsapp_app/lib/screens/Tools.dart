import 'package:flutter/material.dart';
import 'package:whatsapp_app/widgets/navbar.dart';

class Tools extends StatefulWidget {
  const Tools({super.key});

  @override
  State<Tools> createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(  bottomNavigationBar: navbar(),);
  }
}