// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {

//     const colorizeColors = [
//   Colors.purple,
//   Colors.blue,
//   Colors.yellow,
//   Colors.red,
// ];

// // const colorizeTextStyle = TextStyle(
// //   fontSize: 50.0,
// //   fontFamily: 'Horizon',
// );
    return Scaffold(
      appBar: AppBar(
        title: Text('BiLu'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        //Sets the default color for text and icons in the AppBar.
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        elevation: 4.0,
        centerTitle: true,
        toolbarHeight: 60.0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,

        titleSpacing: 20.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedTextKit(
            //   animatedTexts: [
            //     TypewriterAnimatedText('Rupesh',
            //         textStyle:
            //             TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            //         speed: Duration(milliseconds: 400))
            //   ],
            //   totalRepeatCount: 4,
            //   pause: Duration(milliseconds: 200),
            //   displayFullTextOnTap: true,
            //   stopPauseOnTap: true,
            // ),
            // AnimatedTextKit(
            //   animatedTexts: [
            //     RotateAnimatedText(
            //       'HELLO',
            //       textStyle:
            //           TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            //     ),
            //     RotateAnimatedText(
            //       'BEAUTIFUL',
            //       textStyle:
            //           TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            //     ),
            //     RotateAnimatedText(
            //       'WORLD',
            //       textStyle:
            //           TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            //     )
            //   ],
              //   // totalRepeatCount: 4,
              //   // pause: Duration(milliseconds: 200),
              //   // displayFullTextOnTap: true,
              //   // stopPauseOnTap: true,
              // ),




              AnimatedTextKit(animatedTexts: [
                WavyAnimatedText('HEY DEVELOPER',
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                WavyAnimatedText("LET'S START",
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ]
          )

  //         AnimatedTextKit(
  //   animatedTexts: [
  //     ColorizeAnimatedText(
  //       'BiLu',
  //       textStyle: colorizeTextStyle,
  //       colors: colorizeColors,
  //     ),
  //     ColorizeAnimatedText(
  //       'Baby I Love You',
  //       textStyle: colorizeTextStyle,
  //       colors: colorizeColors,
  //     ),
  //     ColorizeAnimatedText(
  //       'Are You Single ?',
  //       textStyle: colorizeTextStyle,
  //       colors: colorizeColors,
  //     ),
  //   ],
  //   isRepeatingAnimation: true,
  //   onTap: () {
  //     print("Tap Event");
  //   },
  // )
          ],
        ),
      ),
    );
  }
}
