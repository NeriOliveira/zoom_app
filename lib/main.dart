import 'package:flutter/material.dart';
import 'package:zoom_app/constants.dart';
import 'package:zoom_app/screenview/main_screen/main_screen.dart';

void main() {
  runApp(const ZoomApp());
}

class ZoomApp extends StatelessWidget {
  const ZoomApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoom AgroTech',
      home: const MainScreen(),
    );
  }
}

