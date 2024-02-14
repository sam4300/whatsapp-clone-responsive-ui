import 'package:flutter/material.dart';
import 'package:whatsapp_clone_responsive_ui/colors.dart';
import 'package:whatsapp_clone_responsive_ui/widgets/contacts_lsit.dart';
import 'package:whatsapp_clone_responsive_ui/widgets/info_bar.dart';
import 'package:whatsapp_clone_responsive_ui/widgets/search_bar.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.19,
                  child: const Column(
                    children: [
                      InfoBar(),
                      SearchBarItem(),
                    ],
                  ),
                ),
                const ContactList(),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
