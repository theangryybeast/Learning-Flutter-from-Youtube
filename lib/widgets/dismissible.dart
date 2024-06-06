// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> fruits = ['mango', 'guava', 'apple', 'orange'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible Package'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruit = fruits[index];
          return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('$fruit removed from basket'),
                    backgroundColor: Colors.red,
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('$fruit added to basket'),
                    backgroundColor: Colors.green,
                  ));
                }
              },
              key: Key(fruit),
              background: Container(
                color: Colors.red,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              secondaryBackground: Container(
                color: Colors.green,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Icon(
                      Icons.archive,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              child: Card(
                child: ListTile(
                  title: Text(fruits[index]),
                ),
              ));
        },
      ),
    );
  }
}
