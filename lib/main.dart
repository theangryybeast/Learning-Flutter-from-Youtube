// ignore_for_file: prefer_const_constructors, unused_import

import "package:animated_text_kit/animated_text_kit.dart";
import "package:flutter/material.dart";
import "package:my_app/widgets/alert.dart";
import "package:my_app/widgets/animated_text.dart";
import "package:my_app/widgets/bottomnav.dart";
import "package:my_app/widgets/bottomsheet.dart";
import "package:my_app/widgets/button.dart";
import "package:my_app/widgets/container_sized.dart";
import "package:my_app/widgets/dismissible.dart";
import "package:my_app/widgets/drawer.dart";
import "package:my_app/widgets/dropdown.dart";
import "package:my_app/widgets/form.dart";
import 'package:my_app/widgets/image.dart';
import "package:my_app/widgets/imagepicker.dart";
import "package:my_app/widgets/list_grid.dart";
import "package:my_app/widgets/location.dart";
import "package:my_app/widgets/rowscols.dart";
import "package:my_app/widgets/snackbar.dart";
import "package:my_app/widgets/stack.dart";
import "package:my_app/widgets/tabbar.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(brightness: Brightness.light, primaryColor: Colors.green),
        home: LocationWidget());
  }
}


//MyApp is a class that extends StatelessWidget, which means it represents a widget that does not change over time.
//@override indicates that the build method overrides the corresponding method in the parent class.