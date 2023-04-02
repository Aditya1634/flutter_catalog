import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Hot reload : small change Hot Restart : app related change
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage,
    ); 
  }
}
