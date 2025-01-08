import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:whatsapp_app/screens/Calls.dart';
import 'package:whatsapp_app/screens/Chats.dart';
import 'package:whatsapp_app/screens/Settings.dart';
import 'package:whatsapp_app/screens/Tools.dart';
import 'package:whatsapp_app/screens/Updates.dart';

class navbar extends StatefulWidget {
  final Color backgorundColor;
  final onPressed;

  const navbar(
      {Key? key,
      this.backgorundColor =  const Color.fromARGB(255, 93, 90, 90),
      this.onPressed})
      : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  @override
  Widget build(BuildContext context) {
    //Icons
    final _icons = [
      const Icon(
        Icons.update,
        color: Colors.grey,
      ),
      const Icon(
        Icons.call,
        color: Colors.grey,
      ),
      const Icon(
        Icons.house,
        color: Colors.grey,
      ),
      const Icon(
        Icons.chat,
        color: Colors.grey,
      ),
      const Icon(
        Icons.settings,
        color: Colors.grey,
      )
    ];

    final _pages = [Updates(), Calls(), Tools(), Chats(), Settings()];

    // Icons tooltips
    final _tooltip = ["Updates", "Calls", "Tools", "Chats", "Settings"];

    
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: BottomAppBar(
          color: widget.backgorundColor,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              5,
              (index) => IconButton(
                onPressed: () {
                  Get.to(() => _pages[index]);
                  print(index);
                },
                tooltip: _tooltip[index],
                icon: _icons[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
