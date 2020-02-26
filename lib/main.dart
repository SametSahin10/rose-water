import 'package:flutter/material.dart';
import 'package:rose_water/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gül suyu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Raleway'
      ),
      home: HomePage(),
    );
  }
}