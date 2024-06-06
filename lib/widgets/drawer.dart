// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.all(0),
                  child: Container(
                    color: Colors.brown,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          //can also define network image if image is present at internnet else use asset for system located image
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/17392875/pexels-photo-17392875/free-photo-of-young-woman-in-a-dress-walking-in-the-garden.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Rupesh Saini'),
                            Text('rupesh@gmail.com')
                          ],
                        )
                      ],
                    ),
                  )),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text('MyFiles'),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('Shared with Me'),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Starred'),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Trash'),
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text('Uploads'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log Out'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer Widget'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(child: Text('Hey There !!')),
      ),
    );
  }
}
