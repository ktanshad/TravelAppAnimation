

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
              textStyle: const TextStyle(
                fontSize: 36,
                color: Colors.black45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
          totalRepeatCount: 2,
        ),


          Center(
            child: Text(
              text ?? '',
              style: const TextStyle(
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

