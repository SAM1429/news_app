import 'package:flutter/material.dart';
import 'package:news_app/views/homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
    },
  ));
}
