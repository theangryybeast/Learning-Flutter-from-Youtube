// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  //for a butto here we will use action property
                  action: SnackBarAction(
                    label: 'Undo',
                    textColor: Colors.blue,
                    onPressed: () {},
                  ),

                  //for floating snackbar
                  behavior: SnackBarBehavior.floating,

                  //for changing shape of rectangular border
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                  // padding: EdgeInsets.all(20),
                  duration: const Duration(milliseconds: 3000),
                  content: Text('This is an Error'),
                  backgroundColor: Colors.red,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text('Show snackbar')),
        ),
      ),
    );
  }
}
