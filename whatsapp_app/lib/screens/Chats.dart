import 'package:flutter/material.dart';
import 'package:whatsapp_app/widgets/navbar.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       bottomNavigationBar: navbar(),
      
    );
  }
}