import 'package:flutter/material.dart';
import 'package:whatsapp_clone_responsive_ui/colors.dart';
import 'package:whatsapp_clone_responsive_ui/responsive/responsive_layout.dart';
import 'package:whatsapp_clone_responsive_ui/screens/desktop_screen.dart';
import 'package:whatsapp_clone_responsive_ui/screens/mobile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Whatsapp Clone',
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
        home: const ResponsiveLayout(
          desktopScreenLayout: DesktopScreen(),
          mobileScreenLayout: MobileScreen(),
        ));
  }
}
