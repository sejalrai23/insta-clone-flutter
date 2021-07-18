import 'package:flutter/material.dart';
import "root_app.dart";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:ThemeData(primaryColor: Colors.white),
    home:RootApp(),
  ));
}

