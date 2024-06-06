// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet Widget'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                elevation: 0,
                isDismissible: true,
                enableDrag: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                backgroundColor: Theme.of(context).primaryColor,
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('User 1'),
                      ),
                      ListTile(
                        title: Text('Apple'),
                        subtitle: Text('User 2'),
                      ),
                      ListTile(
                        title: Text('Mango'),
                        subtitle: Text('User 3'),
                      ),
                      ListTile(
                        title: Text('Guava'),
                        subtitle: Text('User 4'),
                      ),
                      ListTile(
                        title: Text('PineApple'),
                        subtitle: Text('User 5'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Show Bottom Sheet')),
      ),
    );
  }
}
