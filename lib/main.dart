import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Hot reload : small change Hot Restart : app related change
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //saara ui ka kam build method ke andar hota hai ;build ko bar bar call krna hota hai coz ui ko refresh krta hai
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome to 30 days of Flutter"),
          ),
        ),
      ),
    );
  }
}
