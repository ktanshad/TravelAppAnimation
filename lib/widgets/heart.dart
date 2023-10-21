import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> {
  Color color=Colors.grey;
  double targetvalue=30;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin:targetvalue,end:targetvalue),
      duration: Duration(seconds: 1),
      builder: (context, value, child) {
        return     IconButton(
        icon: Icon(
          Icons.favorite,
          color: color,
          size:value,
        ),
        onPressed: (){
         setState(() {
           if(color==Colors.grey){
            color=Colors.red;
            targetvalue=40;
           }else{
            color=Colors.grey;
            targetvalue=30;
           }
         
           
         });
        },
      );
      },
   
    );
  }
}


