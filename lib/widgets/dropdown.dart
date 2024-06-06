// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedvalue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown List'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              margin: EdgeInsets.all(10),
              // c
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                dropdownColor: Colors.grey.shade200,
                isExpanded: true,
                value: selectedvalue,
                icon: Icon(Icons.arrow_circle_down_rounded),
                onChanged: (String? newvalue) {
                  setState(() {
                    selectedvalue = newvalue!;
                    //exclaimation for null safety
                  });
                },
                items: <String>['Orange', 'Apple', 'Mango', 'Banana', 'Grapes']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
