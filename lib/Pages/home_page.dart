import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {

  //saara ui ka kam build method ke andar hota hai ;build ko bar bar call krna hota hai coz ui ko refresh krta hai

  final int days = 30;
  final String name = "Aditya";
  final String surname = "Dhage";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of Flutter by $name " +
              surname), //$ string interpolation
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
