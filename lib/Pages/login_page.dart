import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}
//There are two classes in stateful widget

class _LoginPageState extends State<LoginPage> {
  // _ makes variables, methods, classes private
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          //Making responsive for smaller devices //adding scroll functionality
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ), //for spacing instead of padding
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ), //To give space like padding
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 16.0),
                child: Column(
                  children: [
                    TextFormField(
                        decoration: InputDecoration(
                          hintText: " Enter Username",
                          labelText: "Username",
                        ),
                        onChanged: ((value) {
                          name = value;
                          // build method ko call dena padega to reflect changes kyuki ui usme hi likha hai pura but direct call nahi de skte like build() isse code fat jayega..... uske liye method  hai setState
                          setState(() {}); // Calls build method
                        })),
                    TextFormField(
                      obscureText: true, //to make password dot dot sot
                      decoration: InputDecoration(
                        hintText: " Enter Password",
                        labelText: "Password ",
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),

                    // TO make a widget clickable: two methods
                    // 1. Wrap contaiber with inkwell (Splash/Ripple colour)
                    // 2. Wrap with Gesture Detector (No Feedback)
                    InkWell(
                      //for await method should bve async
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        //color: Colors.deepPurple,
                        alignment: Alignment.center,
                        child: changeButton?Icon(Icons.done,color: Colors.white,) :Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            // shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(changeButton?50:8)),
                      )
                      ),
                    

                    // ElevatedButton(
                    //   onPressed: () {
                    //     //In built class in material
                    //     //Methods: push : ek class aage jana
                    //     //pop: ek class peeche jana
                    //     //push me contex bhi hona
                    //     //pushNamed me buildContext se by default context le leta
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    // )
                  ],
                ),
              )
            ],
          ),
        )); //TO prevent overflow
  }
}
