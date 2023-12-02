

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelappanimation/controller/locale_provider.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:Colors.blueGrey,
       body:Consumer<LocaleProvider>(
        builder: (context, value, child) {
          return ListView(
          children: [
            const SizedBox(height: 30,),
            const Text(
              'Langauge Settings',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold),
            ),
            ListTile(
           title: const Text(
             'English',
             style: TextStyle(
              color: Colors.white,
               fontWeight: FontWeight.bold,
             ),
           ),
           onTap: (){
            value.setLocale( Locale('en'));
           },
            ),
            ListTile(
           title: const Text(
             'Hindi',
             style: TextStyle(
              color: Colors.white,
               fontWeight: FontWeight.bold,
             ),
           ),
           onTap: () {
                value.setLocale( Locale('hi'));
           },
            ),
            ListTile(
           title: const Text(
             'Spanish',
             style: TextStyle(
              color: Colors.white,
               fontWeight: FontWeight.bold,
             ),
           ),
           onTap: (){
                 value.setLocale( const Locale('es'));
           },
            ),
          ],
          );
        },
      
       ),
    );
  }
}