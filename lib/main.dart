import 'package:flutter/material.dart';
import 'package:letterku/view.dart';
import 'package:letterku/views/gender_select.dart';
import 'package:letterku/views/age_select.dart';

import 'getstarted.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        unselectedWidgetColor: Colors.deepOrangeAccent,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Started(),
      ),
    );
  }
}