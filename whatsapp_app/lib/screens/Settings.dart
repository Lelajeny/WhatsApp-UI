import 'package:flutter/material.dart';
import 'package:whatsapp_app/widgets/navbar.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        bottomNavigationBar: navbar(),
    );
  }
}