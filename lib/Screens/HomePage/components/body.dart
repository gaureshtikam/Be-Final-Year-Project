import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/components/rounded_form_input_field.dart';
import 'package:flutter_auth/widgets/drawer.dart';
import 'package:flutter_auth/Screens/HomePage/components/home_screen.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_auth/Screens/WeightInfo/components/weightinfo_screen.dart';
import 'package:flutter_auth/habitTracker/screens/home_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Scaffold(
    //   appBar: AppBar(
    //     title: Text("Catalog App"),
    //   ),
    //   drawer: MyDrawer(),
    // );

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WeightInfoScreen();
                      },
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(color: Colors.green, spreadRadius: 2),
                        ],
                      ),
                      child: Image.asset('assets/images/FitnessDiet_icon.png',
                          width: 110.0, height: 110.0),
                    ),
                    Text("Diet and Workout",
                        style: TextStyle(
                            fontSize: 18,
                            height: 2,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            //For Habit Tracker
            SizedBox(height: 50),
            Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen2();
                      },
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(color: Colors.green, spreadRadius: 4.5),
                        ],
                      ),
                      child: Image.asset(
                        'assets/images/habittrackericon.png',
                        width: 110.0,
                        height: 110.0,
                      ),
                    ),
                    Text("Habit Tracker",
                        style: TextStyle(
                            fontSize: 18,
                            height: 2,
                            fontWeight: FontWeight.bold)
                    ),
                  ],

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
