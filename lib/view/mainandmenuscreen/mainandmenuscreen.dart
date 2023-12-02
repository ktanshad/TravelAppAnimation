import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:travelappanimation/view/home_screen/home.dart';
import 'package:travelappanimation/view/menuscreen/menuscreen.dart';

class MainAndMenuScreen extends StatelessWidget {
  const MainAndMenuScreen({super.key});

  @override
  Widget build(BuildContext context)=>ZoomDrawer(
    menuBackgroundColor:Colors.blueGrey,
    style: DrawerStyle.defaultStyle,
    menuScreen:MenuScreen(),
     mainScreen:Home()
     );
}