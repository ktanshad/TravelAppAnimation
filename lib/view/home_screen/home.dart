
import 'package:flutter/material.dart';
import 'package:travelappanimation/view/home_screen/widgets/menuwidget.dart';
import 'package:travelappanimation/view/home_screen/widgets/tripList.dart';
import 'package:travelappanimation/view/home_screen/widgets/screenTitle.dart';


class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/travelAppBackground image.png"), 
          fit: BoxFit.cover,
          alignment: Alignment.topLeft
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
            MenuWidget(),
      
          const SizedBox(height: 30),
          SizedBox(
            height: 160,
            child: ScreenTitle(text: 'Happy Vacations'),
          ),
          
             Container(
             height: 500,
              decoration: BoxDecoration(
                 color: Colors.black26,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TripList()),
        ],
      )
        )
    );
  }
}

