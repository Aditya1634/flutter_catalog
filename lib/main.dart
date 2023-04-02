import 'package:flutter/material.dart';
import 'package:flutter_catalog/Pages/login_page.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

//Hot reload : small change Hot Restart : app related change
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(), commented because it is in default route HomePage() cant occur twice.
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple //Adjusts all colors according to Purple(here).
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, //  Brightness.dark overrides theme so colors of primarySwatch wont work in dark mode
      //primarySwatch: Colors.red
      ),
      // routes are ways for an app boht sare raaste ho skte to go in app/navigate
      //it takes a map(key,value)
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(), //default route "/" means HomePage
        "/home":(context) =>  HomePage(),// they are objects of classes therefore new keyword is working
        "/login" :(context) => LoginPage()
      }, 
    ); 
  }
}

