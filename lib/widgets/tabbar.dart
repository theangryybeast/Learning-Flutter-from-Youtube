// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        //by setting initial indedx as 1 app will start from status(index 1)
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'WhatsApp',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Colors.white,
            bottom: TabBar(
              //if we have more than 5 containers or length is very much then it will be diffcult for all to sustain in a single app bar so we can make it scrollable using property
              // isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.chat,
                    color: Colors.white,
                  ),
                  text: 'CHATS',
                ),
                Tab(
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                  ),
                  text: 'STATUS',
                ),
                Tab(
                  icon: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  text: 'CALLS',
                )
              ],
              //increase underline size by indicator weight
              labelColor: Colors.yellow, // Color for the selected tab
              unselectedLabelColor:
                  Colors.white, // Color for the unselected tabs
              indicatorColor:
                  Colors.yellow, // Color for the tab indicator(underline)
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Center(
                  child: Text(
                    'CHATS',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'STATUS',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'CALLS',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
