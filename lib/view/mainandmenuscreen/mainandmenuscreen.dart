import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:travelappanimation/view/home_screen/home.dart';
import 'package:travelappanimation/view/menuscreen/menuscreen.dart';

class MainAndMenuScreen extends StatefulWidget {
  const MainAndMenuScreen({super.key});

  @override
  State<MainAndMenuScreen> createState() => _MainAndMenuScreenState();
}

class _MainAndMenuScreenState extends State<MainAndMenuScreen> {
  @override
  Widget build(BuildContext context)=>ZoomDrawer(
    style: DrawerStyle.defaultStyle,
    menuScreen:MenuScreen(),
     mainScreen:Home()
     );
}