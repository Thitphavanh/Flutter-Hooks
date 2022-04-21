import 'package:flutter/material.dart';
import 'package:flutter_react_hooks/screen_page.dart';
import 'home_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const ScreenPage(),
    ),
  );
}
