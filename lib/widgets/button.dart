// ignore_for_file: prefer_const_constructors, avoid_print, sized_box_for_whitespace
//press shift command space for attributes
import "package:flutter/material.dart";

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                print('Success!!');
              },

              //style property of text button

              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(30)),
                  overlayColor: MaterialStateProperty.all(Colors.red),
                  elevation: MaterialStateProperty.all(20),
                  shadowColor: MaterialStateProperty.all(Colors.deepOrange),
                  //can't assign color here by Colors.red
                  //so use MaterialStatePrpoerty
                  backgroundColor: MaterialStateProperty.all(Colors.yellow)),

              child: Text(
                'Press me !! ',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),

          // elevated button
          Container(
            height: 50,
            width: 300,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Theme.of(context).primaryColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                //to increase height and width wrap it with container
                onPressed: () {
                  print('Like');
                },
                child: Text(
                  'Click me !!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
