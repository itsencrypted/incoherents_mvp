import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedTexts extends StatefulWidget {
  @override
  _AnimatedTextsState createState() => _AnimatedTextsState();
}


class _AnimatedTextsState extends State<AnimatedTexts> {
  @override
  Widget build(BuildContext context) {
    return
      ColorizeAnimatedTextKit(
        onTap: (){},
        text: [
          'Larry Page',
          'Bill Gates',
          'Steve Jobs',
        ],
        textStyle: const TextStyle(
          fontSize: 50.0,
        ),
        colors: [
          Colors.purple,
          Colors.blue,
          Colors.yellow,
          Colors.red,
        ],
    );
  }
}




