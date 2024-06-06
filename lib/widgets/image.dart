// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Doraemon Image',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          child: CachedNetworkImage(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgKbK30LDjLOX7fm-Yr-vG0-W50ZC-3UrStg&s',
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          //when using decoration then put color in that
          // color: Colors.red,
          // decoration: BoxDecoration(
          //     boxShadow: [
          //       BoxShadow(
          //         blurRadius: 10,
          //         color: Colors.black,
          //         spreadRadius: 5.0,
          //       )
          //     ],
          //     color: Colors.red,
          //     borderRadius: BorderRadius.circular(20),
          //     image: DecorationImage(
          //       image: AssetImage('assets/Unknown.jpeg'),

          // image: NetworkImage(
          //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgKbK30LDjLOX7fm-Yr-vG0-W50ZC-3UrStg&s'),
          //for network image

          //   fit: BoxFit.cover,
          // )
          // ),

          //even if we provide border to container it will not be applied to image
          // no need to provide child (image.network) for this border inserting to image while in container
          //we will use image decoration

          // child: Image.network(
          //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgKbK30LDjLOX7fm-Yr-vG0-W50ZC-3UrStg&s',
          //   fit: BoxFit.cover,
          // ),
          //use boxfit.cover always for fitting it in parent container
          //use fit width for fit the width
          //use contain for just containing image and not considering image and height
        ),
      ),
    );
  }
}
