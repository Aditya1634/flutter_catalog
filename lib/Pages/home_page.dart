import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {

  //saara ui ka kam build method ke andar hota hai ;build ko bar bar call krna hota hai coz ui ko refresh krta hai

  final int days = 30;
  final String name = "Aditya";
  final String surname = "Dhage";
  // double num = 40.2323;
  //  no float, long short byte
  // bool isMale = true;
  // num temp = 30.5; //takes both int and float

  // var day = "Tuesday"; datatype decided by compiler
  // const pi = 3.14;
  // final variable similar to const but in final for eg: if there is a list then sum can be done , but not in const

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // It is a widget ; component of material ; contains head(appBar) body foot((Drawer,Bottom Navigation bar
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
