// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';

// class ScreenTitle extends StatelessWidget {
//   final String?  text;

//    ScreenTitle({super.key, this.text});

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedTextKit(animatedTexts:[
//      RotateAnimatedText(text!,textStyle:TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold) )
//     ],
//     totalRepeatCount: 1,

// );
//   }
// }

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String? text;
  
  ScreenTitle({Key? key, this.text}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedTextKit(
          animatedTexts: [
            RotateAnimatedText(
              text!, 
              textStyle: TextStyle(
                fontSize: 36,
                color: Colors.black45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
          totalRepeatCount: 1,
        ),


          Center(
            child: Text(
              text ?? '',
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}

