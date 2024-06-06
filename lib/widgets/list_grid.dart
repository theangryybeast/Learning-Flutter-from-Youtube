// ignore_for_file: library_private_types_in_public_api, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, non_constant_identifier_names, avoid_unnecessary_containers

import "package:flutter/material.dart";

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  _ListGridState createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['orange', 'apple', 'mango', 'banana', 'guava'];

  //this works fine but if w want to add subtitle too then we have to define a map

  Map fruits_person = {
    'fruits': ['orange', 'apple', 'mango', 'banana', 'guava'],
    'names': ['Rupesh', 'Vineet', 'Manish', 'Aditya', 'Suraj']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List and Grid'),
          backgroundColor: Colors.red,
          elevation: 0,
          shadowColor: Colors.black,
        ),
        body: Container(
          //gridviewbuilder
          child: GridView.builder(
            itemCount: fruits.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
            itemBuilder: (context, index) {
              return Card(
                child: Center(
                  child: Text(fruits[index]),
                ),
              );
            },
          ),

          // child: GridView(
          //   gridDelegate:
          //       //it specifies number of things to be seen in app cross section
          //       SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 3,
          //     crossAxisSpacing: 20,
          //     mainAxisSpacing: 20,
          //     childAspectRatio: 2 / 2,
          //   ),
          //   // 2/3 means width and height),
          //   children: [
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //   ],
          // ),
        )

        //listview
        //list are scrollable but column are not / we can;t write infinite elements so in column
        // Container(
        //   child: ListView(
        //   //   children: [
        //card automatically provides few more options (decorative things like shadow)than container
        //we can't write card many times so we use listview builder when we don't know length of list

        // Card(
        //   child: ListTile(
        //     title: Text('orange'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('mango'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('apple'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('guava'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('kiwi'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('pomergranate'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('banana'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('watermelon'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('papaya'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('lichi'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('strawberry'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('apricot'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('dry fruits'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('tomato'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('potato'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('ladyfinger'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('chilly'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('tamarind'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     title: Text('berry'),
        //     subtitle: Text('Rupesh'),
        //   ),
        // )
        // ],
        // ),
        //
        // ),
        //container

        );
  }
}
