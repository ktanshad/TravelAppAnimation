import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelappanimation/controller/heartprovider.dart';
import 'package:travelappanimation/view/home_screen/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(context) => HeartProvider(), ),
      ],
      child: MaterialApp(
        title: 'travelApp',
        home: Home(),
      ),
    );
  }
}
