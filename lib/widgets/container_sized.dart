// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables
//press command and dot for quick fix

import "package:flutter/material.dart";

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.purple,
            title: const Text(
              'Container and Sized Box',
            )),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            // padding: EdgeInsets.all(10),
            //if i provide padding to this container then space given to child while if i provide margin to child container inside it that one will get space around it
            // margin: EdgeInsets.all(10),
            // color: Colors.amber,
            //remember to remove color from outside and insert it into box decoration if you have provided to outside
            decoration: BoxDecoration(
                color: Colors.blue,
                //remove box shape circle if you want to add box radius as it is by default a circle
                // shape: BoxShape.circle
                shape: BoxShape.rectangle,
                // borderRadius: BorderRadius.circular(20)
                // use above for circular to all sides
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 20, spreadRadius: 5, color: Colors.green)
                ]),
            child: Center(
                child: Container(
              margin: EdgeInsets.all(10),
              height: 50,
              width: 70,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Hey!',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            )

                //commented the text widget for understanding margin and padding
                // Text(
                //   'Hello',
                //   style: TextStyle(fontSize: 20, color: Colors.white),
                // ),
                ),
          ),
        )

        //learning - 1
        //     // ignore: prefer_const_constructors
        //     SizedBox(
        //   height: 100,
        //   width: 50,
        //   // ignore: prefer_const_constructors
        //   // we cant have color property in sized box and nor additional properties like border radius etc
        //   //only used for blank and spacing between two widgets
        //   // ignore: prefer_const_constructors
        //   child: Text('Hello'),
        // ),
        );
  }
}
