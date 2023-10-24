import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelappanimation/controller/heartprovider.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HeartProvider>(
      builder: (context, heartprovider, child) {
        return       TweenAnimationBuilder(
        tween: Tween<double>(begin:heartprovider.targetvalue,end:heartprovider.targetvalue),
        duration: Duration(seconds: 1),
        builder: (context, value, child) {
          return     IconButton(
          icon: Icon(
            Icons.favorite,
            color:heartprovider.heartColor,
            size:value,
          ),
          onPressed: (){
         heartprovider.changeHeartColor();
          },
        );
        },
       
      );
      },
 
    );
  }
}


