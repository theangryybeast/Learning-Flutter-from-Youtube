// ignore_for_file: unused_local_variable, prefer_const_constructors

import "package:flutter/material.dart";

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Rows and Columns'),
      ),
      body: Container(
        //want to take full height so use media queries
        // height: h,
        // width: w,
        // height: 300,
        // width: 200,
        // height: 200,
        // width: w,
        height: 200,
        width: 200,
        color: Colors.amber,
        // child: Center(
        //   child: Container(
        //     height: 60,
        //     width: 60,
        //     color: Colors.red,
        //   ),
        // ),
        //only 1 child can be inside a container at a level so to include other one we are using row widget
        // child: Row(
        //   //by default row will be at center of parent container
        //   //for height 300 and width 200 of parent container 2 child containers will be at outside
        //   // to make row at center use mainaxis alignment
        //   // mainAxisAlignment: MainAxisAlignment.center,

        //   // // for space evenly between row elements
        //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   mainAxisAlignment: MainAxisAlignment.start,

        //   crossAxisAlignment: CrossAxisAlignment.center,

        //   //for this we have wrap that don't have main and cross axis property but rest will be same so i just changed name
        //   // wrap will manage this thing
        //   //when width is 200 then it will give error : not enough space
        //   children: [
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.black,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.white,
        //     )
        //   ],
        // ),

        //part 2 using wrap

        child: Wrap(
          //by default horizontal then vertical is many elements
          // direction: Axis.horizontal,
          // not much effective for row but can be effetive for column

          //shift vertically
          direction: Axis.vertical,

          //wrap alignment
          alignment: WrapAlignment.start,
          //align wrapped elements 
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.red,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.blue,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.green,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.black,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
